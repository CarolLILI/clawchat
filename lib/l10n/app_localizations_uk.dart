// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class SUk extends S {
  SUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Експорт конфігурації';

  @override
  String get importConfig => 'Імпорт конфігурації';

  @override
  String get noServers => 'Серверів поки немає';

  @override
  String get addServerHint =>
      'Додайте сервер OpenClaw, щоб почати спілкування з AI';

  @override
  String get addServer => 'Додати сервер';

  @override
  String serverCount(int count) {
    return 'Сервери ($count)';
  }

  @override
  String get confirmDelete => 'Підтвердити видалення';

  @override
  String confirmDeleteMessage(String name) {
    return 'Ви впевнені, що хочете видалити \"$name\"?';
  }

  @override
  String get cancel => 'Скасувати';

  @override
  String get delete => 'Видалити';

  @override
  String get serverDeleted => 'Сервер видалено';

  @override
  String get configBackupSubject => 'Резервна копія конфігурації ClawChat';

  @override
  String get configExported => 'Конфігурацію експортовано';

  @override
  String exportFailed(String error) {
    return 'Помилка експорту: $error';
  }

  @override
  String get cannotReadFile => 'Неможливо прочитати файл';

  @override
  String get importConfigTitle => 'Імпорт конфігурації';

  @override
  String get importConfigMessage =>
      'Імпортована конфігурація буде обʼєднана з наявним списком серверів. Продовжити?';

  @override
  String get importAction => 'Імпортувати';

  @override
  String get configImported => 'Конфігурацію імпортовано успішно';

  @override
  String importFailed(String error) {
    return 'Помилка імпорту: $error';
  }

  @override
  String get editServer => 'Редагувати сервер';

  @override
  String get basicInfo => 'Основна інформація';

  @override
  String get nameLabel => 'Назва';

  @override
  String get nameHint => 'напр. Мій хмарний сервер';

  @override
  String get pleaseEnterName => 'Введіть назву';

  @override
  String get connectionAddress => 'Адреса зʼєднання';

  @override
  String get serverAddress => 'Адреса сервера';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Введіть адресу';

  @override
  String get portLabel => 'Порт';

  @override
  String get pleaseEnterPort => 'Введіть порт';

  @override
  String get invalidPort => 'Невірний номер порту';

  @override
  String get encryptedConnection => 'Зашифроване зʼєднання (WSS)';

  @override
  String get cloudServerRecommended => 'Рекомендовано для хмарних серверів';

  @override
  String get authMethod => 'Автентифікація';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Введіть пароль Gateway';

  @override
  String get pleaseEnterPassword => 'Введіть пароль';

  @override
  String get passwordHelp =>
      'Пароль знаходиться в gateway.auth.password у ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Отримати з конфігурації OpenClaw';

  @override
  String get pleaseEnterToken => 'Введіть token';

  @override
  String get tokenHelp =>
      'Token знаходиться в gateway.auth.token у ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Зʼєднання успішне';

  @override
  String get connectionFailed => 'Зʼєднання не вдалось';

  @override
  String get testConnection => 'Перевірити зʼєднання';

  @override
  String get save => 'Зберегти';

  @override
  String get serverUpdated => 'Сервер оновлено';

  @override
  String get serverAdded => 'Сервер додано';

  @override
  String get notConnectedToServer => 'Не підключено до сервера';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Підключення...';

  @override
  String get retry => 'Повторити';

  @override
  String get disconnected => 'Відключено';

  @override
  String get connectAction => 'Підключитися';

  @override
  String get connected => 'Підключено';

  @override
  String get connectingTooltip => 'Підключення';

  @override
  String get connectionError => 'Помилка зʼєднання';

  @override
  String get startChatting => 'Почати спілкування';

  @override
  String get chatHint => 'Введіть повідомлення для чату';

  @override
  String get suggestionHello => 'Привіт';

  @override
  String get suggestionWriteCode => 'Допоможи мені написати код';

  @override
  String get suggestionSummarize => 'Підсумуй цю статтю';

  @override
  String get addressLabel => 'Адреса';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Увімкнено';

  @override
  String get tlsDisabled => 'Вимкнено';

  @override
  String get switchServer => 'Змінити сервер';

  @override
  String get clearChatHistory => 'Очистити історію чату';

  @override
  String get serverSettings => 'Налаштування сервера';

  @override
  String get defaultBadge => 'За замовчуванням';

  @override
  String get addressCopied => 'Адресу скопійовано';

  @override
  String get copyAddress => 'Копіювати адресу';

  @override
  String get edit => 'Редагувати';

  @override
  String get justNow => 'Щойно';

  @override
  String minutesAgo(int minutes) {
    return '$minutes хв тому';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours год тому';
  }

  @override
  String daysAgo(int days) {
    return '$days д тому';
  }

  @override
  String get inputMessageHint => 'Введіть повідомлення...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Неможливо підключитися до сервера $address\nПеревірте:\n• Адреса та порт сервера правильні\n• Пристрій знаходиться в одній мережі з сервером\n• Сервер запущено\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Час очікування підключення до $address вичерпано\nПеревірте:\n• Адреса сервера правильна\n• Відсутні обмеження брандмауера\n• Мережа пристрою працює';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Перевірка мережі не вдалась: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Час очікування рукостискання WebSocket вичерпано, сервер не відповів на запит оновлення';

  @override
  String errorWebSocketError(String error) {
    return 'Помилка зʼєднання WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Сервер закрив зʼєднання';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Сервер закрив зʼєднання$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Час очікування рукостискання протоколу Gateway вичерпано\nWebSocket підключено, але сервер не завершив автентифікацію.\nПеревірте:\n• Auth Token правильний\n• Версія Gateway сервера сумісна';

  @override
  String get errorWebSocketTimeout =>
      'Час очікування зʼєднання WebSocket вичерпано';

  @override
  String get errorConnectionRefused =>
      'Зʼєднання відхилено\nСервер може не запускати службу Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Мережа недоступна\nПеревірте мережеве зʼєднання пристрою';

  @override
  String get errorConnectionReset =>
      'Зʼєднання скинуто\nСервер може не підтримувати зʼєднання WebSocket';

  @override
  String get errorTlsCertificate =>
      'Помилка сертифіката TLS\nДля зʼєднань у локальній мережі спробуйте вимкнути зашифроване зʼєднання (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Зʼєднання не вдалось: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Автентифікація не вдалась: $error';
  }
}
