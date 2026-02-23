// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class STa extends S {
  STa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'கட்டமைப்பை ஏற்றுமதி செய்';

  @override
  String get importConfig => 'கட்டமைப்பை இறக்குமதி செய்';

  @override
  String get noServers => 'இதுவரை சேவையகங்கள் இல்லை';

  @override
  String get addServerHint =>
      'AI உடன் உரையாடத் தொடங்க ஒரு OpenClaw சேவையகத்தைச் சேர்க்கவும்';

  @override
  String get addServer => 'சேவையகம் சேர்';

  @override
  String serverCount(int count) {
    return 'சேவையகங்கள் ($count)';
  }

  @override
  String get confirmDelete => 'நீக்குவதை உறுதிசெய்';

  @override
  String confirmDeleteMessage(String name) {
    return '\"$name\" என்பதை நீக்க விரும்புகிறீர்களா?';
  }

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get delete => 'நீக்கு';

  @override
  String get serverDeleted => 'சேவையகம் நீக்கப்பட்டது';

  @override
  String get configBackupSubject => 'ClawChat கட்டமைப்பு காப்புப்பிரதி';

  @override
  String get configExported => 'கட்டமைப்பு ஏற்றுமதி செய்யப்பட்டது';

  @override
  String exportFailed(String error) {
    return 'ஏற்றுமதி தோல்வி: $error';
  }

  @override
  String get cannotReadFile => 'கோப்பைப் படிக்க இயலவில்லை';

  @override
  String get importConfigTitle => 'கட்டமைப்பை இறக்குமதி செய்';

  @override
  String get importConfigMessage =>
      'இறக்குமதி செய்யப்படும் கட்டமைப்பு தற்போதைய சேவையகப் பட்டியலுடன் இணைக்கப்படும். தொடரவா?';

  @override
  String get importAction => 'இறக்குமதி';

  @override
  String get configImported => 'கட்டமைப்பு வெற்றிகரமாக இறக்குமதி செய்யப்பட்டது';

  @override
  String importFailed(String error) {
    return 'இறக்குமதி தோல்வி: $error';
  }

  @override
  String get editServer => 'சேவையகத்தைத் திருத்து';

  @override
  String get basicInfo => 'அடிப்படைத் தகவல்';

  @override
  String get nameLabel => 'பெயர்';

  @override
  String get nameHint => 'எ.கா. எனது கிளவுட் சேவையகம்';

  @override
  String get pleaseEnterName => 'ஒரு பெயரை உள்ளிடவும்';

  @override
  String get connectionAddress => 'இணைப்பு முகவரி';

  @override
  String get serverAddress => 'சேவையக முகவரி';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'ஒரு முகவரியை உள்ளிடவும்';

  @override
  String get portLabel => 'போர்ட்';

  @override
  String get pleaseEnterPort => 'ஒரு போர்ட்டை உள்ளிடவும்';

  @override
  String get invalidPort => 'தவறான போர்ட் எண்';

  @override
  String get encryptedConnection => 'மறையாக்க இணைப்பு (WSS)';

  @override
  String get cloudServerRecommended =>
      'கிளவுட் சேவையகங்களுக்குப் பரிந்துரைக்கப்படுகிறது';

  @override
  String get authMethod => 'அங்கீகாரம்';

  @override
  String get passwordLabel => 'கடவுச்சொல்';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Gateway கடவுச்சொல்லை உள்ளிடவும்';

  @override
  String get pleaseEnterPassword => 'ஒரு கடவுச்சொல்லை உள்ளிடவும்';

  @override
  String get passwordHelp =>
      'கடவுச்சொல் ~/.openclaw/openclaw.json இல் gateway.auth.password இல் உள்ளது';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'OpenClaw கட்டமைப்பிலிருந்து பெறுக';

  @override
  String get pleaseEnterToken => 'ஒரு Token ஐ உள்ளிடவும்';

  @override
  String get tokenHelp =>
      'Token ~/.openclaw/openclaw.json இல் gateway.auth.token இல் உள்ளது';

  @override
  String get connectionSuccess => 'இணைப்பு வெற்றிகரம்';

  @override
  String get connectionFailed => 'இணைப்பு தோல்வி';

  @override
  String get testConnection => 'இணைப்பைச் சோதி';

  @override
  String get save => 'சேமி';

  @override
  String get serverUpdated => 'சேவையகம் புதுப்பிக்கப்பட்டது';

  @override
  String get serverAdded => 'சேவையகம் சேர்க்கப்பட்டது';

  @override
  String get notConnectedToServer => 'சேவையகத்துடன் இணைக்கப்படவில்லை';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'இணைக்கிறது...';

  @override
  String get retry => 'மீண்டும் முயற்சி';

  @override
  String get disconnected => 'துண்டிக்கப்பட்டது';

  @override
  String get connectAction => 'இணை';

  @override
  String get connected => 'இணைக்கப்பட்டது';

  @override
  String get connectingTooltip => 'இணைக்கிறது';

  @override
  String get connectionError => 'இணைப்புப் பிழை';

  @override
  String get startChatting => 'உரையாடலைத் தொடங்கு';

  @override
  String get chatHint => 'உரையாட ஒரு செய்தியை தட்டச்சு செய்யவும்';

  @override
  String get suggestionHello => 'வணக்கம்';

  @override
  String get suggestionWriteCode => 'குறியீடு எழுத உதவுங்கள்';

  @override
  String get suggestionSummarize => 'இந்தக் கட்டுரையைச் சுருக்கவும்';

  @override
  String get addressLabel => 'முகவரி';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'இயக்கப்பட்டது';

  @override
  String get tlsDisabled => 'முடக்கப்பட்டது';

  @override
  String get switchServer => 'சேவையகத்தை மாற்று';

  @override
  String get clearChatHistory => 'உரையாடல் வரலாற்றை அழி';

  @override
  String get serverSettings => 'சேவையக அமைப்புகள்';

  @override
  String get defaultBadge => 'இயல்புநிலை';

  @override
  String get addressCopied => 'முகவரி நகலெடுக்கப்பட்டது';

  @override
  String get copyAddress => 'முகவரியை நகலெடு';

  @override
  String get edit => 'திருத்து';

  @override
  String get justNow => 'இப்போது';

  @override
  String minutesAgo(int minutes) {
    return '$minutes நிமிடங்களுக்கு முன்';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours மணி நேரத்துக்கு முன்';
  }

  @override
  String daysAgo(int days) {
    return '$days நாட்களுக்கு முன்';
  }

  @override
  String get inputMessageHint => 'ஒரு செய்தியை தட்டச்சு செய்யவும்...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'சேவையகம் $address உடன் இணைக்க இயலவில்லை\nசரிபார்க்கவும்:\n• சேவையக முகவரியும் போர்ட்டும் சரியா\n• சாதனம் சேவையகத்தின் அதே நெட்வொர்க்கில் உள்ளதா\n• சேவையகம் இயங்குகிறதா\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '$address இணைப்பு நேரம் முடிந்தது\nசரிபார்க்கவும்:\n• சேவையக முகவரி சரியா\n• ஃபயர்வால் கட்டுப்பாடுகள் இல்லையா\n• சாதன நெட்வொர்க் செயல்படுகிறதா';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'நெட்வொர்க் சோதனை தோல்வி: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket ஹேண்ட்ஷேக் நேரம் முடிந்தது, சேவையகம் மேம்படுத்தல் கோரிக்கைக்குப் பதிலளிக்கவில்லை';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket இணைப்புப் பிழை: $error';
  }

  @override
  String get errorServerClosedConnection => 'சேவையகம் இணைப்பை மூடியது';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'சேவையகம் இணைப்பை மூடியது$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway நெறிமுறை ஹேண்ட்ஷேக் நேரம் முடிந்தது\nWebSocket இணைக்கப்பட்டது, ஆனால் சேவையகம் அங்கீகாரத்தை முடிக்கவில்லை.\nசரிபார்க்கவும்:\n• Auth Token சரியா\n• சேவையக Gateway பதிப்பு இணக்கமானதா';

  @override
  String get errorWebSocketTimeout => 'WebSocket இணைப்பு நேரம் முடிந்தது';

  @override
  String get errorConnectionRefused =>
      'இணைப்பு நிராகரிக்கப்பட்டது\nசேவையகத்தில் Gateway சேவை இயங்கவில்லை';

  @override
  String get errorNetworkUnreachable =>
      'நெட்வொர்க் அணுக இயலவில்லை\nசாதன நெட்வொர்க் இணைப்பைச் சரிபார்க்கவும்';

  @override
  String get errorConnectionReset =>
      'இணைப்பு மீட்டமைக்கப்பட்டது\nசேவையகம் WebSocket இணைப்புகளை ஆதரிக்காமல் இருக்கலாம்';

  @override
  String get errorTlsCertificate =>
      'TLS சான்றிதழ் பிழை\nLAN இணைப்புகளுக்கு, மறையாக்க இணைப்பை (WSS) முடக்கிப் பாருங்கள்';

  @override
  String errorGenericConnection(String error) {
    return 'இணைப்பு தோல்வி: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'அங்கீகாரம் தோல்வி: $error';
  }
}
