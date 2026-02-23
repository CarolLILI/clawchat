// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class SFa extends S {
  SFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'خروجی پیکربندی';

  @override
  String get importConfig => 'ورودی پیکربندی';

  @override
  String get noServers => 'هنوز سروری وجود ندارد';

  @override
  String get addServerHint =>
      'برای شروع گفتگو با هوش مصنوعی یک سرور OpenClaw اضافه کنید';

  @override
  String get addServer => 'افزودن سرور';

  @override
  String serverCount(int count) {
    return 'سرورها ($count)';
  }

  @override
  String get confirmDelete => 'تأیید حذف';

  @override
  String confirmDeleteMessage(String name) {
    return 'آیا مطمئنید که می‌خواهید \"$name\" را حذف کنید؟';
  }

  @override
  String get cancel => 'لغو';

  @override
  String get delete => 'حذف';

  @override
  String get serverDeleted => 'سرور حذف شد';

  @override
  String get configBackupSubject => 'پشتیبان پیکربندی ClawChat';

  @override
  String get configExported => 'پیکربندی خروجی گرفته شد';

  @override
  String exportFailed(String error) {
    return 'خروجی ناموفق: $error';
  }

  @override
  String get cannotReadFile => 'فایل قابل خواندن نیست';

  @override
  String get importConfigTitle => 'ورودی پیکربندی';

  @override
  String get importConfigMessage =>
      'پیکربندی وارد شده با فهرست سرورهای موجود ادغام خواهد شد. ادامه می‌دهید؟';

  @override
  String get importAction => 'ورودی';

  @override
  String get configImported => 'پیکربندی با موفقیت وارد شد';

  @override
  String importFailed(String error) {
    return 'ورودی ناموفق: $error';
  }

  @override
  String get editServer => 'ویرایش سرور';

  @override
  String get basicInfo => 'اطلاعات پایه';

  @override
  String get nameLabel => 'نام';

  @override
  String get nameHint => 'مثلاً سرور ابری من';

  @override
  String get pleaseEnterName => 'لطفاً یک نام وارد کنید';

  @override
  String get connectionAddress => 'آدرس اتصال';

  @override
  String get serverAddress => 'آدرس سرور';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'لطفاً یک آدرس وارد کنید';

  @override
  String get portLabel => 'پورت';

  @override
  String get pleaseEnterPort => 'لطفاً یک پورت وارد کنید';

  @override
  String get invalidPort => 'شماره پورت نامعتبر';

  @override
  String get encryptedConnection => 'اتصال رمزنگاری‌شده (WSS)';

  @override
  String get cloudServerRecommended => 'برای سرورهای ابری توصیه می‌شود';

  @override
  String get authMethod => 'احراز هویت';

  @override
  String get passwordLabel => 'رمز عبور';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'رمز عبور Gateway را وارد کنید';

  @override
  String get pleaseEnterPassword => 'لطفاً یک رمز عبور وارد کنید';

  @override
  String get passwordHelp =>
      'رمز عبور در gateway.auth.password در فایل ~/.openclaw/openclaw.json قرار دارد';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'دریافت از پیکربندی OpenClaw';

  @override
  String get pleaseEnterToken => 'لطفاً یک Token وارد کنید';

  @override
  String get tokenHelp =>
      'Token در gateway.auth.token در فایل ~/.openclaw/openclaw.json قرار دارد';

  @override
  String get connectionSuccess => 'اتصال موفق';

  @override
  String get connectionFailed => 'اتصال ناموفق';

  @override
  String get testConnection => 'تست اتصال';

  @override
  String get save => 'ذخیره';

  @override
  String get serverUpdated => 'سرور به‌روزرسانی شد';

  @override
  String get serverAdded => 'سرور اضافه شد';

  @override
  String get notConnectedToServer => 'به سرور متصل نیست';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'در حال اتصال...';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get disconnected => 'قطع شده';

  @override
  String get connectAction => 'اتصال';

  @override
  String get connected => 'متصل';

  @override
  String get connectingTooltip => 'در حال اتصال';

  @override
  String get connectionError => 'خطای اتصال';

  @override
  String get startChatting => 'شروع گفتگو';

  @override
  String get chatHint => 'برای گفتگو پیامی بنویسید';

  @override
  String get suggestionHello => 'سلام';

  @override
  String get suggestionWriteCode => 'در نوشتن کد کمکم کن';

  @override
  String get suggestionSummarize => 'این مقاله را خلاصه کن';

  @override
  String get addressLabel => 'آدرس';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'فعال';

  @override
  String get tlsDisabled => 'غیرفعال';

  @override
  String get switchServer => 'تغییر سرور';

  @override
  String get clearChatHistory => 'پاک کردن تاریخچه گفتگو';

  @override
  String get serverSettings => 'تنظیمات سرور';

  @override
  String get defaultBadge => 'پیش‌فرض';

  @override
  String get addressCopied => 'آدرس کپی شد';

  @override
  String get copyAddress => 'کپی آدرس';

  @override
  String get edit => 'ویرایش';

  @override
  String get justNow => 'همین الان';

  @override
  String minutesAgo(int minutes) {
    return '$minutes دقیقه پیش';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours ساعت پیش';
  }

  @override
  String daysAgo(int days) {
    return '$days روز پیش';
  }

  @override
  String get inputMessageHint => 'یک پیام بنویسید...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'امکان اتصال به سرور $address وجود ندارد\nلطفاً بررسی کنید:\n• آدرس و پورت سرور صحیح باشد\n• دستگاه در همان شبکه سرور باشد\n• سرور در حال اجرا باشد\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'اتصال به $address منقضی شد\nلطفاً بررسی کنید:\n• آدرس سرور صحیح باشد\n• محدودیت فایروال وجود نداشته باشد\n• شبکه دستگاه فعال باشد';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'بررسی شبکه ناموفق: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'مهلت دست‌دهی WebSocket تمام شد، سرور به درخواست ارتقا پاسخ نداد';

  @override
  String errorWebSocketError(String error) {
    return 'خطای اتصال WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'سرور اتصال را بست';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'سرور اتصال را بست$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'مهلت دست‌دهی پروتکل Gateway تمام شد\nWebSocket متصل شد، اما سرور احراز هویت را کامل نکرد.\nلطفاً بررسی کنید:\n• Auth Token صحیح باشد\n• نسخه Gateway سرور سازگار باشد';

  @override
  String get errorWebSocketTimeout => 'مهلت اتصال WebSocket تمام شد';

  @override
  String get errorConnectionRefused =>
      'اتصال رد شد\nممکن است سرور سرویس Gateway را اجرا نکرده باشد';

  @override
  String get errorNetworkUnreachable =>
      'شبکه در دسترس نیست\nلطفاً اتصال شبکه دستگاه را بررسی کنید';

  @override
  String get errorConnectionReset =>
      'اتصال بازنشانی شد\nممکن است سرور از اتصالات WebSocket پشتیبانی نکند';

  @override
  String get errorTlsCertificate =>
      'خطای گواهی TLS\nبرای اتصالات شبکه محلی، اتصال رمزنگاری‌شده (WSS) را غیرفعال کنید';

  @override
  String errorGenericConnection(String error) {
    return 'اتصال ناموفق: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'احراز هویت ناموفق: $error';
  }
}
