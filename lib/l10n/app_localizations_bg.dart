// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class SBg extends S {
  SBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Експортиране на конфигурация';

  @override
  String get importConfig => 'Импортиране на конфигурация';

  @override
  String get noServers => 'Все още няма сървъри';

  @override
  String get addServerHint =>
      'Добавете сървър OpenClaw, за да започнете чат с AI';

  @override
  String get addServer => 'Добавяне на сървър';

  @override
  String serverCount(int count) {
    return 'Сървъри ($count)';
  }

  @override
  String get confirmDelete => 'Потвърждаване на изтриването';

  @override
  String confirmDeleteMessage(String name) {
    return 'Сигурни ли сте, че искате да изтриете \"$name\"?';
  }

  @override
  String get cancel => 'Отказ';

  @override
  String get delete => 'Изтриване';

  @override
  String get serverDeleted => 'Сървърът е изтрит';

  @override
  String get configBackupSubject =>
      'Резервно копие на конфигурацията на ClawChat';

  @override
  String get configExported => 'Конфигурацията е експортирана';

  @override
  String exportFailed(String error) {
    return 'Неуспешен експорт: $error';
  }

  @override
  String get cannotReadFile => 'Файлът не може да бъде прочетен';

  @override
  String get importConfigTitle => 'Импортиране на конфигурация';

  @override
  String get importConfigMessage =>
      'Импортираната конфигурация ще бъде обединена със съществуващия списък със сървъри. Продължаване?';

  @override
  String get importAction => 'Импортиране';

  @override
  String get configImported => 'Конфигурацията е импортирана успешно';

  @override
  String importFailed(String error) {
    return 'Неуспешен импорт: $error';
  }

  @override
  String get editServer => 'Редактиране на сървър';

  @override
  String get basicInfo => 'Основна информация';

  @override
  String get nameLabel => 'Име';

  @override
  String get nameHint => 'напр. Моят облачен сървър';

  @override
  String get pleaseEnterName => 'Моля, въведете име';

  @override
  String get connectionAddress => 'Адрес на връзката';

  @override
  String get serverAddress => 'Адрес на сървъра';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Моля, въведете адрес';

  @override
  String get portLabel => 'Порт';

  @override
  String get pleaseEnterPort => 'Моля, въведете порт';

  @override
  String get invalidPort => 'Невалиден номер на порт';

  @override
  String get encryptedConnection => 'Криптирана връзка (WSS)';

  @override
  String get cloudServerRecommended => 'Препоръчва се за облачни сървъри';

  @override
  String get authMethod => 'Удостоверяване';

  @override
  String get passwordLabel => 'Парола';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Въведете парола за Gateway';

  @override
  String get pleaseEnterPassword => 'Моля, въведете парола';

  @override
  String get passwordHelp =>
      'Паролата се намира в gateway.auth.password в ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Вземете от конфигурацията на OpenClaw';

  @override
  String get pleaseEnterToken => 'Моля, въведете token';

  @override
  String get tokenHelp =>
      'Token се намира в gateway.auth.token в ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Успешна връзка';

  @override
  String get connectionFailed => 'Неуспешна връзка';

  @override
  String get testConnection => 'Тест на връзката';

  @override
  String get save => 'Запазване';

  @override
  String get serverUpdated => 'Сървърът е актуализиран';

  @override
  String get serverAdded => 'Сървърът е добавен';

  @override
  String get notConnectedToServer => 'Няма връзка със сървъра';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Свързване...';

  @override
  String get retry => 'Опитай отново';

  @override
  String get disconnected => 'Прекъсната връзка';

  @override
  String get connectAction => 'Свързване';

  @override
  String get connected => 'Свързан';

  @override
  String get connectingTooltip => 'Свързване';

  @override
  String get connectionError => 'Грешка при свързване';

  @override
  String get startChatting => 'Започнете чат';

  @override
  String get chatHint => 'Напишете съобщение, за да започнете чат';

  @override
  String get suggestionHello => 'Здравейте';

  @override
  String get suggestionWriteCode => 'Помогнете ми да напиша код';

  @override
  String get suggestionSummarize => 'Обобщете тази статия';

  @override
  String get addressLabel => 'Адрес';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Активирано';

  @override
  String get tlsDisabled => 'Деактивирано';

  @override
  String get switchServer => 'Смяна на сървър';

  @override
  String get clearChatHistory => 'Изчистване на историята на чата';

  @override
  String get serverSettings => 'Настройки на сървъра';

  @override
  String get defaultBadge => 'По подразбиране';

  @override
  String get addressCopied => 'Адресът е копиран';

  @override
  String get copyAddress => 'Копиране на адрес';

  @override
  String get edit => 'Редактиране';

  @override
  String get justNow => 'Току-що';

  @override
  String minutesAgo(int minutes) {
    return 'преди $minutes мин';
  }

  @override
  String hoursAgo(int hours) {
    return 'преди $hours ч';
  }

  @override
  String daysAgo(int days) {
    return 'преди $days д';
  }

  @override
  String get inputMessageHint => 'Напишете съобщение...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Не може да се свърже със сървър $address\nМоля, проверете:\n• Адресът и портът на сървъра са правилни\n• Устройството е в същата мрежа като сървъра\n• Сървърът работи\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Времето за свързване към $address изтече\nМоля, проверете:\n• Адресът на сървъра е правилен\n• Няма ограничения на защитната стена\n• Мрежата на устройството работи';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Проверката на мрежата неуспешна: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Времето за ръкостискане на WebSocket изтече, сървърът не отговори на заявката за надграждане';

  @override
  String errorWebSocketError(String error) {
    return 'Грешка при WebSocket връзка: $error';
  }

  @override
  String get errorServerClosedConnection => 'Сървърът затвори връзката';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Сървърът затвори връзката$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Времето за ръкостискане на протокола Gateway изтече\nWebSocket е свързан, но сървърът не завърши удостоверяването.\nМоля, проверете:\n• Auth Token е правилен\n• Версията на Gateway на сървъра е съвместима';

  @override
  String get errorWebSocketTimeout => 'Времето за WebSocket връзка изтече';

  @override
  String get errorConnectionRefused =>
      'Връзката е отказана\nСървърът може да не изпълнява услугата Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Мрежата е недостъпна\nМоля, проверете мрежовата връзка на устройството';

  @override
  String get errorConnectionReset =>
      'Връзката е нулирана\nСървърът може да не поддържа WebSocket връзки';

  @override
  String get errorTlsCertificate =>
      'Грешка в TLS сертификата\nЗа LAN връзки опитайте да деактивирате криптираната връзка (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Неуспешна връзка: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Неуспешно удостоверяване: $error';
  }
}
