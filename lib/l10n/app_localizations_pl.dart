// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class SPl extends S {
  SPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Eksportuj konfigurację';

  @override
  String get importConfig => 'Importuj konfigurację';

  @override
  String get noServers => 'Brak serwerów';

  @override
  String get addServerHint => 'Dodaj serwer OpenClaw, aby rozpocząć czat z AI';

  @override
  String get addServer => 'Dodaj serwer';

  @override
  String serverCount(int count) {
    return 'Serwery ($count)';
  }

  @override
  String get confirmDelete => 'Potwierdź usunięcie';

  @override
  String confirmDeleteMessage(String name) {
    return 'Czy na pewno chcesz usunąć \"$name\"?';
  }

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get serverDeleted => 'Serwer usunięty';

  @override
  String get configBackupSubject => 'Kopia zapasowa konfiguracji ClawChat';

  @override
  String get configExported => 'Konfiguracja wyeksportowana';

  @override
  String exportFailed(String error) {
    return 'Błąd eksportu: $error';
  }

  @override
  String get cannotReadFile => 'Nie można odczytać pliku';

  @override
  String get importConfigTitle => 'Importuj konfigurację';

  @override
  String get importConfigMessage =>
      'Zaimportowana konfiguracja zostanie scalona z istniejącą listą serwerów. Kontynuować?';

  @override
  String get importAction => 'Importuj';

  @override
  String get configImported => 'Konfiguracja zaimportowana pomyślnie';

  @override
  String importFailed(String error) {
    return 'Błąd importu: $error';
  }

  @override
  String get editServer => 'Edytuj serwer';

  @override
  String get basicInfo => 'Podstawowe informacje';

  @override
  String get nameLabel => 'Nazwa';

  @override
  String get nameHint => 'np. Mój serwer w chmurze';

  @override
  String get pleaseEnterName => 'Wprowadź nazwę';

  @override
  String get connectionAddress => 'Adres połączenia';

  @override
  String get serverAddress => 'Adres serwera';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Wprowadź adres';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Wprowadź port';

  @override
  String get invalidPort => 'Nieprawidłowy numer portu';

  @override
  String get encryptedConnection => 'Połączenie szyfrowane (WSS)';

  @override
  String get cloudServerRecommended => 'Zalecane dla serwerów w chmurze';

  @override
  String get authMethod => 'Uwierzytelnianie';

  @override
  String get passwordLabel => 'Hasło';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Wprowadź hasło Gateway';

  @override
  String get pleaseEnterPassword => 'Wprowadź hasło';

  @override
  String get passwordHelp =>
      'Hasło znajduje się w gateway.auth.password w pliku ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Pobierz z konfiguracji OpenClaw';

  @override
  String get pleaseEnterToken => 'Wprowadź token';

  @override
  String get tokenHelp =>
      'Token znajduje się w gateway.auth.token w pliku ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Połączenie udane';

  @override
  String get connectionFailed => 'Połączenie nieudane';

  @override
  String get testConnection => 'Testuj połączenie';

  @override
  String get save => 'Zapisz';

  @override
  String get serverUpdated => 'Serwer zaktualizowany';

  @override
  String get serverAdded => 'Serwer dodany';

  @override
  String get notConnectedToServer => 'Brak połączenia z serwerem';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Łączenie...';

  @override
  String get retry => 'Ponów';

  @override
  String get disconnected => 'Rozłączony';

  @override
  String get connectAction => 'Połącz';

  @override
  String get connected => 'Połączony';

  @override
  String get connectingTooltip => 'Łączenie';

  @override
  String get connectionError => 'Błąd połączenia';

  @override
  String get startChatting => 'Rozpocznij czat';

  @override
  String get chatHint => 'Napisz wiadomość, aby czatować';

  @override
  String get suggestionHello => 'Cześć';

  @override
  String get suggestionWriteCode => 'Pomóż mi napisać kod';

  @override
  String get suggestionSummarize => 'Podsumuj ten artykuł';

  @override
  String get addressLabel => 'Adres';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Włączony';

  @override
  String get tlsDisabled => 'Wyłączony';

  @override
  String get switchServer => 'Zmień serwer';

  @override
  String get clearChatHistory => 'Wyczyść historię czatu';

  @override
  String get serverSettings => 'Ustawienia serwera';

  @override
  String get defaultBadge => 'Domyślny';

  @override
  String get addressCopied => 'Adres skopiowany';

  @override
  String get copyAddress => 'Kopiuj adres';

  @override
  String get edit => 'Edytuj';

  @override
  String get justNow => 'Przed chwilą';

  @override
  String minutesAgo(int minutes) {
    return '$minutes min temu';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours godz. temu';
  }

  @override
  String daysAgo(int days) {
    return '$days dni temu';
  }

  @override
  String get inputMessageHint => 'Napisz wiadomość...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Nie można połączyć się z serwerem $address\nSprawdź:\n• Adres i port serwera są poprawne\n• Urządzenie jest w tej samej sieci co serwer\n• Serwer jest uruchomiony\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Upłynął limit czasu połączenia z $address\nSprawdź:\n• Adres serwera jest poprawny\n• Brak ograniczeń zapory sieciowej\n• Sieć urządzenia działa';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Sprawdzanie sieci nie powiodło się: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Upłynął limit czasu uzgadniania WebSocket, serwer nie odpowiedział na żądanie upgrade';

  @override
  String errorWebSocketError(String error) {
    return 'Błąd połączenia WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Serwer zamknął połączenie';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Serwer zamknął połączenie$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Upłynął limit czasu uzgadniania protokołu Gateway\nWebSocket połączony, ale serwer nie ukończył uwierzytelniania.\nSprawdź:\n• Auth Token jest poprawny\n• Wersja Gateway serwera jest kompatybilna';

  @override
  String get errorWebSocketTimeout =>
      'Upłynął limit czasu połączenia WebSocket';

  @override
  String get errorConnectionRefused =>
      'Połączenie odrzucone\nSerwer może nie mieć uruchomionej usługi Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Sieć nieosiągalna\nSprawdź połączenie sieciowe urządzenia';

  @override
  String get errorConnectionReset =>
      'Połączenie zresetowane\nSerwer może nie obsługiwać połączeń WebSocket';

  @override
  String get errorTlsCertificate =>
      'Błąd certyfikatu TLS\nDla połączeń LAN spróbuj wyłączyć połączenie szyfrowane (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Połączenie nieudane: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Uwierzytelnianie nieudane: $error';
  }
}
