import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:ed25519_edwards/ed25519_edwards.dart' as ed25519;
import 'package:hive_flutter/hive_flutter.dart';

/// 去除 base64url 尾部 padding（与 OpenClaw 服务端保持一致）
String _base64UrlNoPad(List<int> bytes) {
  return base64Url.encode(bytes).replaceAll('=', '');
}

class DeviceIdentity {
  String deviceId;
  String publicKey;  // base64url encoded (no padding)
  String privateKey; // base64url encoded (no padding)
  
  DeviceIdentity({
    required this.deviceId,
    required this.publicKey,
    required this.privateKey,
  });
  
  factory DeviceIdentity.generate() {
    final keyPair = ed25519.generateKey();
    final publicKey = _base64UrlNoPad(keyPair.publicKey.bytes);
    final privateKey = _base64UrlNoPad(keyPair.privateKey.bytes);
    
    final deviceId = _deriveDeviceIdFromPublicKey(publicKey);
    
    return DeviceIdentity(
      deviceId: deviceId,
      publicKey: publicKey,
      privateKey: privateKey,
    );
  }
  
  /// SHA256(raw public key bytes) -> hex
  static String _deriveDeviceIdFromPublicKey(String publicKeyB64) {
    final bytes = base64Url.decode(_padBase64(publicKeyB64));
    final hash = sha256.convert(bytes);
    return hash.toString();
  }

  /// 补齐 base64url padding
  static String _padBase64(String s) {
    final rem = s.length % 4;
    if (rem == 0) return s;
    return s + '=' * (4 - rem);
  }
  
  /// 格式与 OpenClaw Gateway 一致:
  /// version|deviceId|clientId|clientMode|role|scopes|signedAtMs|token[|nonce]
  String buildAuthPayload({
    required String clientId,
    required String clientMode,
    required String role,
    required List<String> scopes,
    required int signedAtMs,
    required String? token,
    String? nonce,
  }) {
    final version = (nonce != null && nonce.isNotEmpty) ? 'v2' : 'v1';
    final base = [
      version,
      deviceId,
      clientId,
      clientMode,
      role,
      scopes.join(','),
      signedAtMs.toString(),
      token ?? '',
    ];
    if (version == 'v2') {
      base.add(nonce ?? '');
    }
    return base.join('|');
  }
  
  /// Ed25519 签名，返回 base64url 编码的 64 字节签名
  String signPayload(String payload) {
    final privateKeyBytes = base64Url.decode(_padBase64(privateKey));
    final privateKeyObj = ed25519.PrivateKey(privateKeyBytes);
    
    final payloadBytes = Uint8List.fromList(utf8.encode(payload));
    // ed25519.sign() 返回 signature || message (NaCl 格式)，只取前 64 字节签名
    final signedMessage = ed25519.sign(privateKeyObj, payloadBytes);
    final signatureOnly = Uint8List.sublistView(signedMessage, 0, 64);
    
    return _base64UrlNoPad(signatureOnly);
  }
  
  Map<String, dynamic> toJson() => {
    'deviceId': deviceId,
    'publicKey': publicKey,
    'privateKey': privateKey,
  };
  
  factory DeviceIdentity.fromJson(Map<String, dynamic> json) {
    return DeviceIdentity(
      deviceId: json['deviceId'] as String,
      publicKey: json['publicKey'] as String,
      privateKey: json['privateKey'] as String,
    );
  }
}

/// 全局设备身份管理（带持久化）
class DeviceIdentityManager {
  static DeviceIdentity? _identity;
  static bool _initialized = false;
  
  static const int _identityVersion = 2;

  static Future<void> _init() async {
    if (_initialized) return;
    
    try {
      final box = await Hive.openBox('device');
      final savedVersion = box.get('identity_version') as int?;
      final saved = box.get('identity') as Map<dynamic, dynamic>?;
      
      if (saved != null && savedVersion == _identityVersion) {
        _identity = DeviceIdentity(
          deviceId: saved['deviceId'] as String,
          publicKey: saved['publicKey'] as String,
          privateKey: saved['privateKey'] as String,
        );
        print('[ClawChat] Loaded device identity: ${_identity!.deviceId}');
      } else if (saved != null) {
        // 旧版本格式，清除并重新生成
        print('[ClawChat] Clearing outdated device identity (v${savedVersion ?? 1} -> v$_identityVersion)');
        await box.delete('identity');
      }
    } catch (e) {
      print('[ClawChat] Failed to load device identity: $e');
    }
    
    _initialized = true;
  }
  
  static Future<DeviceIdentity> getOrCreate() async {
    await _init();
    
    if (_identity == null) {
      _identity = DeviceIdentity.generate();
      
      try {
        final box = await Hive.openBox('device');
        await box.put('identity', _identity!.toJson());
        await box.put('identity_version', _identityVersion);
        print('[ClawChat] Saved new device identity: ${_identity!.deviceId}');
      } catch (e) {
        print('[ClawChat] Failed to save device identity: $e');
      }
    }
    
    return _identity!;
  }
  
  static Future<void> clear() async {
    _identity = null;
    _initialized = false;
    try {
      final box = await Hive.openBox('device');
      await box.delete('identity');
    } catch (e) {
      print('[ClawChat] Failed to clear device identity: $e');
    }
  }
}
