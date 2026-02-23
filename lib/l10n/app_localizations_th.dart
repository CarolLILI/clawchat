// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class STh extends S {
  STh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'ส่งออกการตั้งค่า';

  @override
  String get importConfig => 'นำเข้าการตั้งค่า';

  @override
  String get noServers => 'ยังไม่มีเซิร์ฟเวอร์';

  @override
  String get addServerHint => 'เพิ่มเซิร์ฟเวอร์ OpenClaw เพื่อเริ่มสนทนากับ AI';

  @override
  String get addServer => 'เพิ่มเซิร์ฟเวอร์';

  @override
  String serverCount(int count) {
    return 'เซิร์ฟเวอร์ ($count)';
  }

  @override
  String get confirmDelete => 'ยืนยันการลบ';

  @override
  String confirmDeleteMessage(String name) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$name\"?';
  }

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get serverDeleted => 'ลบเซิร์ฟเวอร์แล้ว';

  @override
  String get configBackupSubject => 'สำรองข้อมูลการตั้งค่า ClawChat';

  @override
  String get configExported => 'ส่งออกการตั้งค่าแล้ว';

  @override
  String exportFailed(String error) {
    return 'ส่งออกล้มเหลว: $error';
  }

  @override
  String get cannotReadFile => 'ไม่สามารถอ่านไฟล์ได้';

  @override
  String get importConfigTitle => 'นำเข้าการตั้งค่า';

  @override
  String get importConfigMessage =>
      'การตั้งค่าที่นำเข้าจะถูกรวมเข้ากับรายการเซิร์ฟเวอร์ที่มีอยู่ ต้องการดำเนินการต่อหรือไม่?';

  @override
  String get importAction => 'นำเข้า';

  @override
  String get configImported => 'นำเข้าการตั้งค่าสำเร็จ';

  @override
  String importFailed(String error) {
    return 'นำเข้าล้มเหลว: $error';
  }

  @override
  String get editServer => 'แก้ไขเซิร์ฟเวอร์';

  @override
  String get basicInfo => 'ข้อมูลเบื้องต้น';

  @override
  String get nameLabel => 'ชื่อ';

  @override
  String get nameHint => 'เช่น เซิร์ฟเวอร์คลาวด์ของฉัน';

  @override
  String get pleaseEnterName => 'กรุณาใส่ชื่อ';

  @override
  String get connectionAddress => 'ที่อยู่การเชื่อมต่อ';

  @override
  String get serverAddress => 'ที่อยู่เซิร์ฟเวอร์';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'กรุณาใส่ที่อยู่';

  @override
  String get portLabel => 'พอร์ต';

  @override
  String get pleaseEnterPort => 'กรุณาใส่พอร์ต';

  @override
  String get invalidPort => 'หมายเลขพอร์ตไม่ถูกต้อง';

  @override
  String get encryptedConnection => 'การเชื่อมต่อเข้ารหัส (WSS)';

  @override
  String get cloudServerRecommended => 'แนะนำสำหรับเซิร์ฟเวอร์คลาวด์';

  @override
  String get authMethod => 'วิธีการยืนยันตัวตน';

  @override
  String get passwordLabel => 'รหัสผ่าน';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'ใส่รหัสผ่าน Gateway';

  @override
  String get pleaseEnterPassword => 'กรุณาใส่รหัสผ่าน';

  @override
  String get passwordHelp =>
      'รหัสผ่านอยู่ที่ gateway.auth.password ใน ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'ดึงจากการตั้งค่า OpenClaw';

  @override
  String get pleaseEnterToken => 'กรุณาใส่ Token';

  @override
  String get tokenHelp =>
      'Token อยู่ที่ gateway.auth.token ใน ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'เชื่อมต่อสำเร็จ';

  @override
  String get connectionFailed => 'เชื่อมต่อล้มเหลว';

  @override
  String get testConnection => 'ทดสอบการเชื่อมต่อ';

  @override
  String get save => 'บันทึก';

  @override
  String get serverUpdated => 'อัปเดตเซิร์ฟเวอร์แล้ว';

  @override
  String get serverAdded => 'เพิ่มเซิร์ฟเวอร์แล้ว';

  @override
  String get notConnectedToServer => 'ยังไม่ได้เชื่อมต่อกับเซิร์ฟเวอร์';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'กำลังเชื่อมต่อ...';

  @override
  String get retry => 'ลองใหม่';

  @override
  String get disconnected => 'ไม่ได้เชื่อมต่อ';

  @override
  String get connectAction => 'เชื่อมต่อ';

  @override
  String get connected => 'เชื่อมต่อแล้ว';

  @override
  String get connectingTooltip => 'กำลังเชื่อมต่อ';

  @override
  String get connectionError => 'ข้อผิดพลาดการเชื่อมต่อ';

  @override
  String get startChatting => 'เริ่มสนทนาเลย';

  @override
  String get chatHint => 'พิมพ์ข้อความเพื่อสนทนา';

  @override
  String get suggestionHello => 'สวัสดี';

  @override
  String get suggestionWriteCode => 'ช่วยเขียนโค้ดให้หน่อย';

  @override
  String get suggestionSummarize => 'สรุปบทความนี้ให้หน่อย';

  @override
  String get addressLabel => 'ที่อยู่';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'เปิดใช้งาน';

  @override
  String get tlsDisabled => 'ปิดใช้งาน';

  @override
  String get switchServer => 'เปลี่ยนเซิร์ฟเวอร์';

  @override
  String get clearChatHistory => 'ล้างประวัติการสนทนา';

  @override
  String get serverSettings => 'ตั้งค่าเซิร์ฟเวอร์';

  @override
  String get defaultBadge => 'ค่าเริ่มต้น';

  @override
  String get addressCopied => 'คัดลอกที่อยู่แล้ว';

  @override
  String get copyAddress => 'คัดลอกที่อยู่';

  @override
  String get edit => 'แก้ไข';

  @override
  String get justNow => 'เมื่อสักครู่';

  @override
  String minutesAgo(int minutes) {
    return '$minutes นาทีที่แล้ว';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours ชั่วโมงที่แล้ว';
  }

  @override
  String daysAgo(int days) {
    return '$days วันที่แล้ว';
  }

  @override
  String get inputMessageHint => 'พิมพ์ข้อความ...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'ไม่สามารถเชื่อมต่อกับเซิร์ฟเวอร์ $address\nกรุณาตรวจสอบ:\n• ที่อยู่เซิร์ฟเวอร์และพอร์ตถูกต้องหรือไม่\n• อุปกรณ์อยู่ในเครือข่ายเดียวกับเซิร์ฟเวอร์หรือไม่\n• เซิร์ฟเวอร์กำลังทำงานอยู่หรือไม่\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'การเชื่อมต่อกับ $address หมดเวลา\nกรุณาตรวจสอบ:\n• ที่อยู่เซิร์ฟเวอร์ถูกต้องหรือไม่\n• มีการจำกัดจากไฟร์วอลล์หรือไม่\n• เครือข่ายของอุปกรณ์ทำงานปกติหรือไม่';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'ตรวจสอบเครือข่ายล้มเหลว: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket แฮนด์เชคหมดเวลา เซิร์ฟเวอร์ไม่ตอบสนองต่อคำขออัปเกรด';

  @override
  String errorWebSocketError(String error) {
    return 'ข้อผิดพลาดการเชื่อมต่อ WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'เซิร์ฟเวอร์ปิดการเชื่อมต่อ';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'เซิร์ฟเวอร์ปิดการเชื่อมต่อ$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway โปรโตคอลแฮนด์เชคหมดเวลา\nWebSocket เชื่อมต่อแล้ว แต่เซิร์ฟเวอร์ไม่ได้ดำเนินการยืนยันตัวตนให้เสร็จสมบูรณ์\nกรุณาตรวจสอบ:\n• Auth Token ถูกต้องหรือไม่\n• เวอร์ชัน Gateway ของเซิร์ฟเวอร์เข้ากันได้หรือไม่';

  @override
  String get errorWebSocketTimeout => 'การเชื่อมต่อ WebSocket หมดเวลา';

  @override
  String get errorConnectionRefused =>
      'การเชื่อมต่อถูกปฏิเสธ\nเซิร์ฟเวอร์อาจไม่ได้รันบริการ Gateway';

  @override
  String get errorNetworkUnreachable =>
      'เข้าถึงเครือข่ายไม่ได้\nกรุณาตรวจสอบการเชื่อมต่อเครือข่ายของอุปกรณ์';

  @override
  String get errorConnectionReset =>
      'การเชื่อมต่อถูกรีเซ็ต\nเซิร์ฟเวอร์อาจไม่รองรับการเชื่อมต่อ WebSocket';

  @override
  String get errorTlsCertificate =>
      'ข้อผิดพลาดใบรับรอง TLS\nสำหรับการเชื่อมต่อ LAN ลองปิดการเชื่อมต่อเข้ารหัส (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'เชื่อมต่อล้มเหลว: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'ยืนยันตัวตนล้มเหลว: $error';
  }
}
