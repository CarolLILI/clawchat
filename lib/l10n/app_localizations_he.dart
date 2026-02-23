// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class SHe extends S {
  SHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'ייצוא הגדרות';

  @override
  String get importConfig => 'ייבוא הגדרות';

  @override
  String get noServers => 'אין שרתים עדיין';

  @override
  String get addServerHint => 'הוסף שרת OpenClaw כדי להתחיל לשוחח עם AI';

  @override
  String get addServer => 'הוסף שרת';

  @override
  String serverCount(int count) {
    return 'שרתים ($count)';
  }

  @override
  String get confirmDelete => 'אישור מחיקה';

  @override
  String confirmDeleteMessage(String name) {
    return 'האם אתה בטוח שברצונך למחוק את \"$name\"?';
  }

  @override
  String get cancel => 'ביטול';

  @override
  String get delete => 'מחק';

  @override
  String get serverDeleted => 'השרת נמחק';

  @override
  String get configBackupSubject => 'גיבוי הגדרות ClawChat';

  @override
  String get configExported => 'ההגדרות יוצאו';

  @override
  String exportFailed(String error) {
    return 'הייצוא נכשל: $error';
  }

  @override
  String get cannotReadFile => 'לא ניתן לקרוא את הקובץ';

  @override
  String get importConfigTitle => 'ייבוא הגדרות';

  @override
  String get importConfigMessage =>
      'ההגדרות המיובאות ימוזגו עם רשימת השרתים הקיימת. להמשיך?';

  @override
  String get importAction => 'ייבוא';

  @override
  String get configImported => 'ההגדרות יובאו בהצלחה';

  @override
  String importFailed(String error) {
    return 'הייבוא נכשל: $error';
  }

  @override
  String get editServer => 'עריכת שרת';

  @override
  String get basicInfo => 'מידע בסיסי';

  @override
  String get nameLabel => 'שם';

  @override
  String get nameHint => 'לדוגמה: השרת הענני שלי';

  @override
  String get pleaseEnterName => 'נא להזין שם';

  @override
  String get connectionAddress => 'כתובת חיבור';

  @override
  String get serverAddress => 'כתובת שרת';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'נא להזין כתובת';

  @override
  String get portLabel => 'פורט';

  @override
  String get pleaseEnterPort => 'נא להזין פורט';

  @override
  String get invalidPort => 'מספר פורט לא חוקי';

  @override
  String get encryptedConnection => 'חיבור מוצפן (WSS)';

  @override
  String get cloudServerRecommended => 'מומלץ לשרתים בענן';

  @override
  String get authMethod => 'אימות';

  @override
  String get passwordLabel => 'סיסמה';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'הזן סיסמת Gateway';

  @override
  String get pleaseEnterPassword => 'נא להזין סיסמה';

  @override
  String get passwordHelp =>
      'הסיסמה נמצאת ב-gateway.auth.password בקובץ ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'קבל מהגדרות OpenClaw';

  @override
  String get pleaseEnterToken => 'נא להזין Token';

  @override
  String get tokenHelp =>
      'ה-Token נמצא ב-gateway.auth.token בקובץ ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'החיבור הצליח';

  @override
  String get connectionFailed => 'החיבור נכשל';

  @override
  String get testConnection => 'בדוק חיבור';

  @override
  String get save => 'שמור';

  @override
  String get serverUpdated => 'השרת עודכן';

  @override
  String get serverAdded => 'השרת נוסף';

  @override
  String get notConnectedToServer => 'לא מחובר לשרת';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'מתחבר...';

  @override
  String get retry => 'נסה שנית';

  @override
  String get disconnected => 'מנותק';

  @override
  String get connectAction => 'התחבר';

  @override
  String get connected => 'מחובר';

  @override
  String get connectingTooltip => 'מתחבר';

  @override
  String get connectionError => 'שגיאת חיבור';

  @override
  String get startChatting => 'התחל לשוחח';

  @override
  String get chatHint => 'הקלד הודעה כדי לשוחח';

  @override
  String get suggestionHello => 'שלום';

  @override
  String get suggestionWriteCode => 'עזור לי לכתוב קוד';

  @override
  String get suggestionSummarize => 'סכם את המאמר הזה';

  @override
  String get addressLabel => 'כתובת';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'מופעל';

  @override
  String get tlsDisabled => 'מושבת';

  @override
  String get switchServer => 'החלף שרת';

  @override
  String get clearChatHistory => 'נקה היסטוריית צ׳אט';

  @override
  String get serverSettings => 'הגדרות שרת';

  @override
  String get defaultBadge => 'ברירת מחדל';

  @override
  String get addressCopied => 'הכתובת הועתקה';

  @override
  String get copyAddress => 'העתק כתובת';

  @override
  String get edit => 'עריכה';

  @override
  String get justNow => 'הרגע';

  @override
  String minutesAgo(int minutes) {
    return 'לפני $minutes דקות';
  }

  @override
  String hoursAgo(int hours) {
    return 'לפני $hours שעות';
  }

  @override
  String daysAgo(int days) {
    return 'לפני $days ימים';
  }

  @override
  String get inputMessageHint => 'הקלד הודעה...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'לא ניתן להתחבר לשרת $address\nנא לבדוק:\n• כתובת השרת והפורט נכונים\n• המכשיר באותה רשת כמו השרת\n• השרת פועל\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'החיבור ל-$address חרג מהזמן המוקצב\nנא לבדוק:\n• כתובת השרת נכונה\n• אין הגבלות חומת אש\n• רשת המכשיר עובדת';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'בדיקת רשת נכשלה: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'לחיצת היד של WebSocket חרגה מהזמן המוקצב, השרת לא הגיב לבקשת השדרוג';

  @override
  String errorWebSocketError(String error) {
    return 'שגיאת חיבור WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'השרת סגר את החיבור';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'השרת סגר את החיבור$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'לחיצת היד של פרוטוקול Gateway חרגה מהזמן המוקצב\nWebSocket התחבר, אך השרת לא השלים את האימות.\nנא לבדוק:\n• ה-Auth Token נכון\n• גרסת Gateway של השרת תואמת';

  @override
  String get errorWebSocketTimeout => 'חיבור WebSocket חרג מהזמן המוקצב';

  @override
  String get errorConnectionRefused =>
      'החיבור נדחה\nייתכן שהשרת אינו מפעיל שירות Gateway';

  @override
  String get errorNetworkUnreachable =>
      'הרשת אינה נגישה\nנא לבדוק את חיבור הרשת של המכשיר';

  @override
  String get errorConnectionReset =>
      'החיבור אופס\nייתכן שהשרת אינו תומך בחיבורי WebSocket';

  @override
  String get errorTlsCertificate =>
      'שגיאת אישור TLS\nלחיבורי רשת מקומית, נסה להשבית חיבור מוצפן (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'החיבור נכשל: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'האימות נכשל: $error';
  }
}
