// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class SHi extends S {
  SHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'कॉन्फ़िग निर्यात करें';

  @override
  String get importConfig => 'कॉन्फ़िग आयात करें';

  @override
  String get noServers => 'अभी कोई सर्वर नहीं है';

  @override
  String get addServerHint =>
      'AI से चैट शुरू करने के लिए OpenClaw सर्वर जोड़ें';

  @override
  String get addServer => 'सर्वर जोड़ें';

  @override
  String serverCount(int count) {
    return 'सर्वर ($count)';
  }

  @override
  String get confirmDelete => 'हटाने की पुष्टि करें';

  @override
  String confirmDeleteMessage(String name) {
    return 'क्या आप वाकई \"$name\" को हटाना चाहते हैं?';
  }

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get serverDeleted => 'सर्वर हटा दिया गया';

  @override
  String get configBackupSubject => 'ClawChat कॉन्फ़िग बैकअप';

  @override
  String get configExported => 'कॉन्फ़िग निर्यात हो गया';

  @override
  String exportFailed(String error) {
    return 'निर्यात विफल: $error';
  }

  @override
  String get cannotReadFile => 'फ़ाइल पढ़ा नहीं जा सकता';

  @override
  String get importConfigTitle => 'कॉन्फ़िग आयात करें';

  @override
  String get importConfigMessage =>
      'आयातित कॉन्फ़िग मौजूदा सर्वर सूची में मर्ज हो जाएगा। जारी रखें?';

  @override
  String get importAction => 'आयात करें';

  @override
  String get configImported => 'कॉन्फ़िग सफलतापूर्वक आयात हो गया';

  @override
  String importFailed(String error) {
    return 'आयात विफल: $error';
  }

  @override
  String get editServer => 'सर्वर संपादित करें';

  @override
  String get basicInfo => 'बुनियादी जानकारी';

  @override
  String get nameLabel => 'नाम';

  @override
  String get nameHint => 'उदा. मेरा क्लाउड सर्वर';

  @override
  String get pleaseEnterName => 'कृपया नाम दर्ज करें';

  @override
  String get connectionAddress => 'कनेक्शन पता';

  @override
  String get serverAddress => 'सर्वर पता';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'कृपया पता दर्ज करें';

  @override
  String get portLabel => 'पोर्ट';

  @override
  String get pleaseEnterPort => 'कृपया पोर्ट दर्ज करें';

  @override
  String get invalidPort => 'अमान्य पोर्ट नंबर';

  @override
  String get encryptedConnection => 'एन्क्रिप्टेड कनेक्शन (WSS)';

  @override
  String get cloudServerRecommended => 'क्लाउड सर्वर के लिए अनुशंसित';

  @override
  String get authMethod => 'प्रमाणीकरण विधि';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Gateway पासवर्ड दर्ज करें';

  @override
  String get pleaseEnterPassword => 'कृपया पासवर्ड दर्ज करें';

  @override
  String get passwordHelp =>
      'पासवर्ड ~/.openclaw/openclaw.json में gateway.auth.password पर है';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'OpenClaw कॉन्फ़िग से प्राप्त करें';

  @override
  String get pleaseEnterToken => 'कृपया Token दर्ज करें';

  @override
  String get tokenHelp =>
      'Token ~/.openclaw/openclaw.json में gateway.auth.token पर है';

  @override
  String get connectionSuccess => 'कनेक्शन सफल';

  @override
  String get connectionFailed => 'कनेक्शन विफल';

  @override
  String get testConnection => 'कनेक्शन जाँचें';

  @override
  String get save => 'सहेजें';

  @override
  String get serverUpdated => 'सर्वर अपडेट हो गया';

  @override
  String get serverAdded => 'सर्वर जोड़ा गया';

  @override
  String get notConnectedToServer => 'सर्वर से कनेक्ट नहीं है';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'कनेक्ट हो रहा है...';

  @override
  String get retry => 'पुनः प्रयास';

  @override
  String get disconnected => 'डिस्कनेक्ट';

  @override
  String get connectAction => 'कनेक्ट करें';

  @override
  String get connected => 'कनेक्टेड';

  @override
  String get connectingTooltip => 'कनेक्ट हो रहा है';

  @override
  String get connectionError => 'कनेक्शन त्रुटि';

  @override
  String get startChatting => 'चैट शुरू करें';

  @override
  String get chatHint => 'चैट करने के लिए संदेश टाइप करें';

  @override
  String get suggestionHello => 'नमस्ते';

  @override
  String get suggestionWriteCode => 'कोड लिखने में मदद करें';

  @override
  String get suggestionSummarize => 'इस लेख का सारांश दें';

  @override
  String get addressLabel => 'पता';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'सक्रिय';

  @override
  String get tlsDisabled => 'निष्क्रिय';

  @override
  String get switchServer => 'सर्वर बदलें';

  @override
  String get clearChatHistory => 'चैट इतिहास साफ़ करें';

  @override
  String get serverSettings => 'सर्वर सेटिंग्स';

  @override
  String get defaultBadge => 'डिफ़ॉल्ट';

  @override
  String get addressCopied => 'पता कॉपी हो गया';

  @override
  String get copyAddress => 'पता कॉपी करें';

  @override
  String get edit => 'संपादित करें';

  @override
  String get justNow => 'अभी';

  @override
  String minutesAgo(int minutes) {
    return '$minutes मिनट पहले';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours घंटे पहले';
  }

  @override
  String daysAgo(int days) {
    return '$days दिन पहले';
  }

  @override
  String get inputMessageHint => 'संदेश टाइप करें...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'सर्वर $address से कनेक्ट नहीं हो पा रहा\nकृपया जाँचें:\n• सर्वर पता और पोर्ट सही हैं\n• डिवाइस सर्वर के समान नेटवर्क पर है\n• सर्वर चल रहा है\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '$address से कनेक्शन का समय समाप्त\nकृपया जाँचें:\n• सर्वर पता सही है\n• कोई फ़ायरवॉल प्रतिबंध नहीं है\n• डिवाइस का नेटवर्क काम कर रहा है';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'नेटवर्क जाँच विफल: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket हैंडशेक का समय समाप्त, सर्वर ने अपग्रेड अनुरोध का जवाब नहीं दिया';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket कनेक्शन त्रुटि: $error';
  }

  @override
  String get errorServerClosedConnection => 'सर्वर ने कनेक्शन बंद कर दिया';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'सर्वर ने कनेक्शन बंद कर दिया$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway प्रोटोकॉल हैंडशेक का समय समाप्त\nWebSocket कनेक्ट हो गया, लेकिन सर्वर ने प्रमाणीकरण पूरा नहीं किया।\nकृपया जाँचें:\n• Auth Token सही है\n• सर्वर Gateway संस्करण संगत है';

  @override
  String get errorWebSocketTimeout => 'WebSocket कनेक्शन का समय समाप्त';

  @override
  String get errorConnectionRefused =>
      'कनेक्शन अस्वीकृत\nसर्वर Gateway सेवा नहीं चला रहा हो सकता है';

  @override
  String get errorNetworkUnreachable =>
      'नेटवर्क पहुँच योग्य नहीं\nकृपया डिवाइस का नेटवर्क कनेक्शन जाँचें';

  @override
  String get errorConnectionReset =>
      'कनेक्शन रीसेट हो गया\nसर्वर WebSocket कनेक्शन का समर्थन नहीं कर सकता';

  @override
  String get errorTlsCertificate =>
      'TLS प्रमाणपत्र त्रुटि\nLAN कनेक्शन के लिए, एन्क्रिप्टेड कनेक्शन (WSS) बंद करके देखें';

  @override
  String errorGenericConnection(String error) {
    return 'कनेक्शन विफल: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'प्रमाणीकरण विफल: $error';
  }
}
