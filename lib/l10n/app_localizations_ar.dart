// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'تصدير الإعدادات';

  @override
  String get importConfig => 'استيراد الإعدادات';

  @override
  String get noServers => 'لا توجد خوادم بعد';

  @override
  String get addServerHint =>
      'أضف خادم OpenClaw لبدء الدردشة مع الذكاء الاصطناعي';

  @override
  String get addServer => 'إضافة خادم';

  @override
  String serverCount(int count) {
    return 'الخوادم ($count)';
  }

  @override
  String get confirmDelete => 'تأكيد الحذف';

  @override
  String confirmDeleteMessage(String name) {
    return 'هل أنت متأكد أنك تريد حذف \"$name\"؟';
  }

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get serverDeleted => 'تم حذف الخادم';

  @override
  String get configBackupSubject => 'نسخة احتياطية لإعدادات ClawChat';

  @override
  String get configExported => 'تم تصدير الإعدادات';

  @override
  String exportFailed(String error) {
    return 'فشل التصدير: $error';
  }

  @override
  String get cannotReadFile => 'لا يمكن قراءة الملف';

  @override
  String get importConfigTitle => 'استيراد الإعدادات';

  @override
  String get importConfigMessage =>
      'سيتم دمج الإعدادات المستوردة مع قائمة الخوادم الحالية. هل تريد المتابعة؟';

  @override
  String get importAction => 'استيراد';

  @override
  String get configImported => 'تم استيراد الإعدادات بنجاح';

  @override
  String importFailed(String error) {
    return 'فشل الاستيراد: $error';
  }

  @override
  String get editServer => 'تعديل الخادم';

  @override
  String get basicInfo => 'معلومات أساسية';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get nameHint => 'مثال: خادمي السحابي';

  @override
  String get pleaseEnterName => 'يرجى إدخال اسم';

  @override
  String get connectionAddress => 'عنوان الاتصال';

  @override
  String get serverAddress => 'عنوان الخادم';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'يرجى إدخال عنوان';

  @override
  String get portLabel => 'المنفذ';

  @override
  String get pleaseEnterPort => 'يرجى إدخال منفذ';

  @override
  String get invalidPort => 'رقم منفذ غير صالح';

  @override
  String get encryptedConnection => 'اتصال مشفّر (WSS)';

  @override
  String get cloudServerRecommended => 'مُوصى به للخوادم السحابية';

  @override
  String get authMethod => 'المصادقة';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'أدخل كلمة مرور Gateway';

  @override
  String get pleaseEnterPassword => 'يرجى إدخال كلمة مرور';

  @override
  String get passwordHelp =>
      'كلمة المرور موجودة في gateway.auth.password في ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'الحصول من إعدادات OpenClaw';

  @override
  String get pleaseEnterToken => 'يرجى إدخال Token';

  @override
  String get tokenHelp =>
      'الـ Token موجود في gateway.auth.token في ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'نجح الاتصال';

  @override
  String get connectionFailed => 'فشل الاتصال';

  @override
  String get testConnection => 'اختبار الاتصال';

  @override
  String get save => 'حفظ';

  @override
  String get serverUpdated => 'تم تحديث الخادم';

  @override
  String get serverAdded => 'تمت إضافة الخادم';

  @override
  String get notConnectedToServer => 'غير متصل بالخادم';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'جارٍ الاتصال...';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get disconnected => 'غير متصل';

  @override
  String get connectAction => 'اتصال';

  @override
  String get connected => 'متصل';

  @override
  String get connectingTooltip => 'جارٍ الاتصال';

  @override
  String get connectionError => 'خطأ في الاتصال';

  @override
  String get startChatting => 'ابدأ الدردشة';

  @override
  String get chatHint => 'اكتب رسالة للدردشة';

  @override
  String get suggestionHello => 'مرحباً';

  @override
  String get suggestionWriteCode => 'ساعدني في كتابة كود';

  @override
  String get suggestionSummarize => 'لخّص هذا المقال';

  @override
  String get addressLabel => 'العنوان';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'مُفعّل';

  @override
  String get tlsDisabled => 'مُعطّل';

  @override
  String get switchServer => 'تبديل الخادم';

  @override
  String get clearChatHistory => 'مسح سجل الدردشة';

  @override
  String get serverSettings => 'إعدادات الخادم';

  @override
  String get defaultBadge => 'افتراضي';

  @override
  String get addressCopied => 'تم نسخ العنوان';

  @override
  String get copyAddress => 'نسخ العنوان';

  @override
  String get edit => 'تعديل';

  @override
  String get justNow => 'الآن';

  @override
  String minutesAgo(int minutes) {
    return 'منذ $minutes دقيقة';
  }

  @override
  String hoursAgo(int hours) {
    return 'منذ $hours ساعة';
  }

  @override
  String daysAgo(int days) {
    return 'منذ $days يوم';
  }

  @override
  String get inputMessageHint => 'اكتب رسالة...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'لا يمكن الاتصال بالخادم $address\nيرجى التحقق من:\n• صحة عنوان الخادم والمنفذ\n• أن الجهاز على نفس الشبكة مع الخادم\n• أن الخادم يعمل\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'انتهت مهلة الاتصال بـ $address\nيرجى التحقق من:\n• صحة عنوان الخادم\n• عدم وجود قيود جدار الحماية\n• أن شبكة الجهاز تعمل';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'فشل فحص الشبكة: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'انتهت مهلة مصافحة WebSocket، لم يستجب الخادم لطلب الترقية';

  @override
  String errorWebSocketError(String error) {
    return 'خطأ في اتصال WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'أغلق الخادم الاتصال';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'أغلق الخادم الاتصال$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'انتهت مهلة مصافحة بروتوكول Gateway\nتم اتصال WebSocket، لكن الخادم لم يُكمل المصادقة.\nيرجى التحقق من:\n• صحة Auth Token\n• توافق إصدار Gateway مع الخادم';

  @override
  String get errorWebSocketTimeout => 'انتهت مهلة اتصال WebSocket';

  @override
  String get errorConnectionRefused =>
      'تم رفض الاتصال\nقد لا يكون الخادم يشغّل خدمة Gateway';

  @override
  String get errorNetworkUnreachable =>
      'الشبكة غير قابلة للوصول\nيرجى التحقق من اتصال شبكة الجهاز';

  @override
  String get errorConnectionReset =>
      'تمت إعادة تعيين الاتصال\nقد لا يدعم الخادم اتصالات WebSocket';

  @override
  String get errorTlsCertificate =>
      'خطأ في شهادة TLS\nللاتصالات المحلية، جرّب تعطيل الاتصال المشفّر (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'فشل الاتصال: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'فشلت المصادقة: $error';
  }
}
