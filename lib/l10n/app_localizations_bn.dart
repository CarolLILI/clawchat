// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class SBn extends S {
  SBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'কনফিগ রপ্তানি করুন';

  @override
  String get importConfig => 'কনফিগ আমদানি করুন';

  @override
  String get noServers => 'এখনো কোনো সার্ভার নেই';

  @override
  String get addServerHint =>
      'AI-এর সাথে চ্যাট শুরু করতে একটি OpenClaw সার্ভার যোগ করুন';

  @override
  String get addServer => 'সার্ভার যোগ করুন';

  @override
  String serverCount(int count) {
    return 'সার্ভার ($count)';
  }

  @override
  String get confirmDelete => 'মুছে ফেলা নিশ্চিত করুন';

  @override
  String confirmDeleteMessage(String name) {
    return 'আপনি কি নিশ্চিত যে আপনি \"$name\" মুছে ফেলতে চান?';
  }

  @override
  String get cancel => 'বাতিল';

  @override
  String get delete => 'মুছুন';

  @override
  String get serverDeleted => 'সার্ভার মুছে ফেলা হয়েছে';

  @override
  String get configBackupSubject => 'ClawChat কনফিগ ব্যাকআপ';

  @override
  String get configExported => 'কনফিগ রপ্তানি হয়েছে';

  @override
  String exportFailed(String error) {
    return 'রপ্তানি ব্যর্থ: $error';
  }

  @override
  String get cannotReadFile => 'ফাইল পড়া যাচ্ছে না';

  @override
  String get importConfigTitle => 'কনফিগ আমদানি করুন';

  @override
  String get importConfigMessage =>
      'আমদানি করা কনফিগ বিদ্যমান সার্ভার তালিকার সাথে মার্জ করা হবে। চালিয়ে যেতে চান?';

  @override
  String get importAction => 'আমদানি';

  @override
  String get configImported => 'কনফিগ সফলভাবে আমদানি হয়েছে';

  @override
  String importFailed(String error) {
    return 'আমদানি ব্যর্থ: $error';
  }

  @override
  String get editServer => 'সার্ভার সম্পাদনা করুন';

  @override
  String get basicInfo => 'মৌলিক তথ্য';

  @override
  String get nameLabel => 'নাম';

  @override
  String get nameHint => 'যেমন: আমার ক্লাউড সার্ভার';

  @override
  String get pleaseEnterName => 'অনুগ্রহ করে একটি নাম লিখুন';

  @override
  String get connectionAddress => 'সংযোগের ঠিকানা';

  @override
  String get serverAddress => 'সার্ভারের ঠিকানা';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'অনুগ্রহ করে একটি ঠিকানা লিখুন';

  @override
  String get portLabel => 'পোর্ট';

  @override
  String get pleaseEnterPort => 'অনুগ্রহ করে একটি পোর্ট লিখুন';

  @override
  String get invalidPort => 'অবৈধ পোর্ট নম্বর';

  @override
  String get encryptedConnection => 'এনক্রিপ্টেড সংযোগ (WSS)';

  @override
  String get cloudServerRecommended => 'ক্লাউড সার্ভারের জন্য প্রস্তাবিত';

  @override
  String get authMethod => 'প্রমাণীকরণ';

  @override
  String get passwordLabel => 'পাসওয়ার্ড';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Gateway পাসওয়ার্ড দিন';

  @override
  String get pleaseEnterPassword => 'অনুগ্রহ করে একটি পাসওয়ার্ড লিখুন';

  @override
  String get passwordHelp =>
      'পাসওয়ার্ডটি ~/.openclaw/openclaw.json-এ gateway.auth.password-এ আছে';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'OpenClaw কনফিগ থেকে নিন';

  @override
  String get pleaseEnterToken => 'অনুগ্রহ করে একটি Token লিখুন';

  @override
  String get tokenHelp =>
      'Token টি ~/.openclaw/openclaw.json-এ gateway.auth.token-এ আছে';

  @override
  String get connectionSuccess => 'সংযোগ সফল';

  @override
  String get connectionFailed => 'সংযোগ ব্যর্থ';

  @override
  String get testConnection => 'সংযোগ পরীক্ষা করুন';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get serverUpdated => 'সার্ভার আপডেট হয়েছে';

  @override
  String get serverAdded => 'সার্ভার যোগ হয়েছে';

  @override
  String get notConnectedToServer => 'সার্ভারে সংযুক্ত নয়';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'সংযোগ হচ্ছে...';

  @override
  String get retry => 'পুনরায় চেষ্টা করুন';

  @override
  String get disconnected => 'সংযোগ বিচ্ছিন্ন';

  @override
  String get connectAction => 'সংযোগ করুন';

  @override
  String get connected => 'সংযুক্ত';

  @override
  String get connectingTooltip => 'সংযোগ হচ্ছে';

  @override
  String get connectionError => 'সংযোগ ত্রুটি';

  @override
  String get startChatting => 'চ্যাট শুরু করুন';

  @override
  String get chatHint => 'চ্যাট করতে একটি বার্তা লিখুন';

  @override
  String get suggestionHello => 'হ্যালো';

  @override
  String get suggestionWriteCode => 'কোড লিখতে সাহায্য করুন';

  @override
  String get suggestionSummarize => 'এই নিবন্ধটি সংক্ষেপ করুন';

  @override
  String get addressLabel => 'ঠিকানা';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'সক্রিয়';

  @override
  String get tlsDisabled => 'নিষ্ক্রিয়';

  @override
  String get switchServer => 'সার্ভার পরিবর্তন করুন';

  @override
  String get clearChatHistory => 'চ্যাট ইতিহাস মুছুন';

  @override
  String get serverSettings => 'সার্ভার সেটিংস';

  @override
  String get defaultBadge => 'ডিফল্ট';

  @override
  String get addressCopied => 'ঠিকানা কপি হয়েছে';

  @override
  String get copyAddress => 'ঠিকানা কপি করুন';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get justNow => 'এইমাত্র';

  @override
  String minutesAgo(int minutes) {
    return '$minutes মিনিট আগে';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours ঘণ্টা আগে';
  }

  @override
  String daysAgo(int days) {
    return '$days দিন আগে';
  }

  @override
  String get inputMessageHint => 'একটি বার্তা লিখুন...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'সার্ভার $address-এ সংযোগ করা যাচ্ছে না\nঅনুগ্রহ করে পরীক্ষা করুন:\n• সার্ভারের ঠিকানা ও পোর্ট সঠিক কিনা\n• ডিভাইসটি সার্ভারের একই নেটওয়ার্কে আছে কিনা\n• সার্ভার চালু আছে কিনা\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '$address-এ সংযোগ সময়সীমা অতিক্রম করেছে\nঅনুগ্রহ করে পরীক্ষা করুন:\n• সার্ভারের ঠিকানা সঠিক কিনা\n• ফায়ারওয়াল সীমাবদ্ধতা নেই কিনা\n• ডিভাইসের নেটওয়ার্ক কাজ করছে কিনা';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'নেটওয়ার্ক পরীক্ষা ব্যর্থ: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket হ্যান্ডশেক সময়সীমা অতিক্রম করেছে, সার্ভার আপগ্রেড অনুরোধে সাড়া দেয়নি';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket সংযোগ ত্রুটি: $error';
  }

  @override
  String get errorServerClosedConnection => 'সার্ভার সংযোগ বন্ধ করেছে';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'সার্ভার সংযোগ বন্ধ করেছে$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway প্রোটোকল হ্যান্ডশেক সময়সীমা অতিক্রম করেছে\nWebSocket সংযুক্ত, কিন্তু সার্ভার প্রমাণীকরণ সম্পন্ন করেনি।\nঅনুগ্রহ করে পরীক্ষা করুন:\n• Auth Token সঠিক কিনা\n• সার্ভার Gateway সংস্করণ সামঞ্জস্যপূর্ণ কিনা';

  @override
  String get errorWebSocketTimeout => 'WebSocket সংযোগ সময়সীমা অতিক্রম করেছে';

  @override
  String get errorConnectionRefused =>
      'সংযোগ প্রত্যাখ্যাত\nসার্ভারে Gateway সেবা চালু নাও থাকতে পারে';

  @override
  String get errorNetworkUnreachable =>
      'নেটওয়ার্ক অনুপলব্ধ\nঅনুগ্রহ করে ডিভাইসের নেটওয়ার্ক সংযোগ পরীক্ষা করুন';

  @override
  String get errorConnectionReset =>
      'সংযোগ রিসেট হয়েছে\nসার্ভার WebSocket সংযোগ সমর্থন নাও করতে পারে';

  @override
  String get errorTlsCertificate =>
      'TLS সার্টিফিকেট ত্রুটি\nল্যান সংযোগের জন্য, এনক্রিপ্টেড সংযোগ (WSS) নিষ্ক্রিয় করে দেখুন';

  @override
  String errorGenericConnection(String error) {
    return 'সংযোগ ব্যর্থ: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'প্রমাণীকরণ ব্যর্থ: $error';
  }
}
