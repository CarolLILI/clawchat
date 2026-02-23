// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class STr extends S {
  STr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Yapılandırmayı Dışa Aktar';

  @override
  String get importConfig => 'Yapılandırmayı İçe Aktar';

  @override
  String get noServers => 'Henüz Sunucu Yok';

  @override
  String get addServerHint =>
      'Yapay zeka ile sohbet etmeye başlamak için bir OpenClaw sunucusu ekleyin';

  @override
  String get addServer => 'Sunucu Ekle';

  @override
  String serverCount(int count) {
    return 'Sunucular ($count)';
  }

  @override
  String get confirmDelete => 'Silmeyi Onayla';

  @override
  String confirmDeleteMessage(String name) {
    return '\"$name\" öğesini silmek istediğinizden emin misiniz?';
  }

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get serverDeleted => 'Sunucu silindi';

  @override
  String get configBackupSubject => 'ClawChat Yapılandırma Yedeği';

  @override
  String get configExported => 'Yapılandırma dışa aktarıldı';

  @override
  String exportFailed(String error) {
    return 'Dışa aktarma başarısız: $error';
  }

  @override
  String get cannotReadFile => 'Dosya okunamıyor';

  @override
  String get importConfigTitle => 'Yapılandırmayı İçe Aktar';

  @override
  String get importConfigMessage =>
      'İçe aktarılan yapılandırma mevcut sunucu listesiyle birleştirilecek. Devam edilsin mi?';

  @override
  String get importAction => 'İçe Aktar';

  @override
  String get configImported => 'Yapılandırma başarıyla içe aktarıldı';

  @override
  String importFailed(String error) {
    return 'İçe aktarma başarısız: $error';
  }

  @override
  String get editServer => 'Sunucuyu Düzenle';

  @override
  String get basicInfo => 'Temel Bilgiler';

  @override
  String get nameLabel => 'Ad';

  @override
  String get nameHint => 'ör. Bulut Sunucum';

  @override
  String get pleaseEnterName => 'Lütfen bir ad girin';

  @override
  String get connectionAddress => 'Bağlantı Adresi';

  @override
  String get serverAddress => 'Sunucu Adresi';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Lütfen bir adres girin';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Lütfen bir port girin';

  @override
  String get invalidPort => 'Geçersiz port numarası';

  @override
  String get encryptedConnection => 'Şifreli Bağlantı (WSS)';

  @override
  String get cloudServerRecommended => 'Bulut sunucuları için önerilir';

  @override
  String get authMethod => 'Kimlik Doğrulama';

  @override
  String get passwordLabel => 'Şifre';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Gateway şifresini girin';

  @override
  String get pleaseEnterPassword => 'Lütfen bir şifre girin';

  @override
  String get passwordHelp =>
      'Şifre, ~/.openclaw/openclaw.json dosyasında gateway.auth.password içindedir';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'OpenClaw yapılandırmasından al';

  @override
  String get pleaseEnterToken => 'Lütfen bir Token girin';

  @override
  String get tokenHelp =>
      'Token, ~/.openclaw/openclaw.json dosyasında gateway.auth.token içindedir';

  @override
  String get connectionSuccess => 'Bağlantı Başarılı';

  @override
  String get connectionFailed => 'Bağlantı Başarısız';

  @override
  String get testConnection => 'Bağlantıyı Test Et';

  @override
  String get save => 'Kaydet';

  @override
  String get serverUpdated => 'Sunucu güncellendi';

  @override
  String get serverAdded => 'Sunucu eklendi';

  @override
  String get notConnectedToServer => 'Sunucuya bağlı değil';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Bağlanıyor...';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get disconnected => 'Bağlantı Kesildi';

  @override
  String get connectAction => 'Bağlan';

  @override
  String get connected => 'Bağlandı';

  @override
  String get connectingTooltip => 'Bağlanıyor';

  @override
  String get connectionError => 'Bağlantı Hatası';

  @override
  String get startChatting => 'Sohbete Başla';

  @override
  String get chatHint => 'Sohbet etmek için bir mesaj yazın';

  @override
  String get suggestionHello => 'Merhaba';

  @override
  String get suggestionWriteCode => 'Kod yazmama yardım et';

  @override
  String get suggestionSummarize => 'Bu makaleyi özetle';

  @override
  String get addressLabel => 'Adres';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Etkin';

  @override
  String get tlsDisabled => 'Devre Dışı';

  @override
  String get switchServer => 'Sunucu Değiştir';

  @override
  String get clearChatHistory => 'Sohbet Geçmişini Temizle';

  @override
  String get serverSettings => 'Sunucu Ayarları';

  @override
  String get defaultBadge => 'Varsayılan';

  @override
  String get addressCopied => 'Adres kopyalandı';

  @override
  String get copyAddress => 'Adresi Kopyala';

  @override
  String get edit => 'Düzenle';

  @override
  String get justNow => 'Az önce';

  @override
  String minutesAgo(int minutes) {
    return '$minutes dk önce';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours sa önce';
  }

  @override
  String daysAgo(int days) {
    return '$days gün önce';
  }

  @override
  String get inputMessageHint => 'Bir mesaj yazın...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Sunucu $address adresine bağlanılamıyor\nLütfen kontrol edin:\n• Sunucu adresi ve portu doğru mu\n• Cihaz sunucuyla aynı ağda mı\n• Sunucu çalışıyor mu\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '$address bağlantısı zaman aşımına uğradı\nLütfen kontrol edin:\n• Sunucu adresi doğru mu\n• Güvenlik duvarı kısıtlaması var mı\n• Cihaz ağı çalışıyor mu';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Ağ kontrolü başarısız: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket el sıkışması zaman aşımına uğradı, sunucu yükseltme isteğine yanıt vermedi';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket bağlantı hatası: $error';
  }

  @override
  String get errorServerClosedConnection => 'Sunucu bağlantıyı kapattı';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Sunucu bağlantıyı kapattı$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway protokol el sıkışması zaman aşımına uğradı\nWebSocket bağlandı, ancak sunucu kimlik doğrulamayı tamamlamadı.\nLütfen kontrol edin:\n• Auth Token doğru mu\n• Sunucu Gateway sürümü uyumlu mu';

  @override
  String get errorWebSocketTimeout =>
      'WebSocket bağlantısı zaman aşımına uğradı';

  @override
  String get errorConnectionRefused =>
      'Bağlantı reddedildi\nSunucu Gateway hizmeti çalıştırmıyor olabilir';

  @override
  String get errorNetworkUnreachable =>
      'Ağ erişilemez\nLütfen cihazın ağ bağlantısını kontrol edin';

  @override
  String get errorConnectionReset =>
      'Bağlantı sıfırlandı\nSunucu WebSocket bağlantılarını desteklemiyor olabilir';

  @override
  String get errorTlsCertificate =>
      'TLS sertifika hatası\nYerel ağ bağlantıları için şifreli bağlantıyı (WSS) devre dışı bırakmayı deneyin';

  @override
  String errorGenericConnection(String error) {
    return 'Bağlantı başarısız: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Kimlik doğrulama başarısız: $error';
  }
}
