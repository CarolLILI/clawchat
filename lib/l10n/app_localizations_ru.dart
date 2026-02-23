// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class SRu extends S {
  SRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Экспорт конфигурации';

  @override
  String get importConfig => 'Импорт конфигурации';

  @override
  String get noServers => 'Нет серверов';

  @override
  String get addServerHint =>
      'Добавьте сервер OpenClaw, чтобы начать общение с ИИ';

  @override
  String get addServer => 'Добавить сервер';

  @override
  String serverCount(int count) {
    return 'Серверы ($count)';
  }

  @override
  String get confirmDelete => 'Подтвердите удаление';

  @override
  String confirmDeleteMessage(String name) {
    return 'Вы уверены, что хотите удалить \"$name\"?';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get serverDeleted => 'Сервер удалён';

  @override
  String get configBackupSubject => 'Резервная копия конфигурации ClawChat';

  @override
  String get configExported => 'Конфигурация экспортирована';

  @override
  String exportFailed(String error) {
    return 'Ошибка экспорта: $error';
  }

  @override
  String get cannotReadFile => 'Не удаётся прочитать файл';

  @override
  String get importConfigTitle => 'Импорт конфигурации';

  @override
  String get importConfigMessage =>
      'Импортированная конфигурация будет объединена с существующим списком серверов. Продолжить?';

  @override
  String get importAction => 'Импортировать';

  @override
  String get configImported => 'Конфигурация успешно импортирована';

  @override
  String importFailed(String error) {
    return 'Ошибка импорта: $error';
  }

  @override
  String get editServer => 'Редактировать сервер';

  @override
  String get basicInfo => 'Основная информация';

  @override
  String get nameLabel => 'Имя';

  @override
  String get nameHint => 'напр. Мой облачный сервер';

  @override
  String get pleaseEnterName => 'Введите имя';

  @override
  String get connectionAddress => 'Адрес подключения';

  @override
  String get serverAddress => 'Адрес сервера';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Введите адрес';

  @override
  String get portLabel => 'Порт';

  @override
  String get pleaseEnterPort => 'Введите порт';

  @override
  String get invalidPort => 'Недопустимый номер порта';

  @override
  String get encryptedConnection => 'Зашифрованное соединение (WSS)';

  @override
  String get cloudServerRecommended => 'Рекомендуется для облачных серверов';

  @override
  String get authMethod => 'Аутентификация';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Введите пароль Gateway';

  @override
  String get pleaseEnterPassword => 'Введите пароль';

  @override
  String get passwordHelp =>
      'Пароль находится в gateway.auth.password в файле ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Получить из конфигурации OpenClaw';

  @override
  String get pleaseEnterToken => 'Введите токен';

  @override
  String get tokenHelp =>
      'Token находится в gateway.auth.token в файле ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Подключение успешно';

  @override
  String get connectionFailed => 'Ошибка подключения';

  @override
  String get testConnection => 'Проверить подключение';

  @override
  String get save => 'Сохранить';

  @override
  String get serverUpdated => 'Сервер обновлён';

  @override
  String get serverAdded => 'Сервер добавлен';

  @override
  String get notConnectedToServer => 'Нет подключения к серверу';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Подключение...';

  @override
  String get retry => 'Повторить';

  @override
  String get disconnected => 'Отключено';

  @override
  String get connectAction => 'Подключиться';

  @override
  String get connected => 'Подключено';

  @override
  String get connectingTooltip => 'Подключение';

  @override
  String get connectionError => 'Ошибка подключения';

  @override
  String get startChatting => 'Начать чат';

  @override
  String get chatHint => 'Введите сообщение для общения';

  @override
  String get suggestionHello => 'Привет';

  @override
  String get suggestionWriteCode => 'Помоги мне написать код';

  @override
  String get suggestionSummarize => 'Кратко изложи эту статью';

  @override
  String get addressLabel => 'Адрес';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Включено';

  @override
  String get tlsDisabled => 'Отключено';

  @override
  String get switchServer => 'Сменить сервер';

  @override
  String get clearChatHistory => 'Очистить историю чата';

  @override
  String get serverSettings => 'Настройки сервера';

  @override
  String get defaultBadge => 'По умолчанию';

  @override
  String get addressCopied => 'Адрес скопирован';

  @override
  String get copyAddress => 'Скопировать адрес';

  @override
  String get edit => 'Редактировать';

  @override
  String get justNow => 'Только что';

  @override
  String minutesAgo(int minutes) {
    return '$minutes мин. назад';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours ч. назад';
  }

  @override
  String daysAgo(int days) {
    return '$days дн. назад';
  }

  @override
  String get inputMessageHint => 'Введите сообщение...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Не удаётся подключиться к серверу $address\nПроверьте:\n• Адрес и порт сервера указаны правильно\n• Устройство находится в одной сети с сервером\n• Сервер запущен\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Время подключения к $address истекло\nПроверьте:\n• Адрес сервера указан правильно\n• Нет ограничений брандмауэра\n• Сеть устройства работает';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Ошибка проверки сети: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Время ожидания рукопожатия WebSocket истекло, сервер не ответил на запрос обновления';

  @override
  String errorWebSocketError(String error) {
    return 'Ошибка соединения WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Сервер закрыл соединение';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Сервер закрыл соединение$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Время ожидания рукопожатия протокола Gateway истекло\nWebSocket подключён, но сервер не завершил аутентификацию.\nПроверьте:\n• Auth Token указан правильно\n• Версия Gateway сервера совместима';

  @override
  String get errorWebSocketTimeout =>
      'Время ожидания подключения WebSocket истекло';

  @override
  String get errorConnectionRefused =>
      'Соединение отклонено\nВозможно, на сервере не запущен сервис Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Сеть недоступна\nПроверьте сетевое подключение устройства';

  @override
  String get errorConnectionReset =>
      'Соединение сброшено\nВозможно, сервер не поддерживает WebSocket-подключения';

  @override
  String get errorTlsCertificate =>
      'Ошибка сертификата TLS\nДля подключений по локальной сети попробуйте отключить зашифрованное соединение (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Ошибка подключения: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Ошибка аутентификации: $error';
  }
}
