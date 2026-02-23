// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class SDe extends S {
  SDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Konfiguration exportieren';

  @override
  String get importConfig => 'Konfiguration importieren';

  @override
  String get noServers => 'Noch keine Server';

  @override
  String get addServerHint =>
      'Fügen Sie einen OpenClaw-Server hinzu, um mit KI zu chatten';

  @override
  String get addServer => 'Server hinzufügen';

  @override
  String serverCount(int count) {
    return 'Server ($count)';
  }

  @override
  String get confirmDelete => 'Löschen bestätigen';

  @override
  String confirmDeleteMessage(String name) {
    return 'Möchten Sie \"$name\" wirklich löschen?';
  }

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get serverDeleted => 'Server gelöscht';

  @override
  String get configBackupSubject => 'ClawChat Konfigurations-Backup';

  @override
  String get configExported => 'Konfiguration exportiert';

  @override
  String exportFailed(String error) {
    return 'Export fehlgeschlagen: $error';
  }

  @override
  String get cannotReadFile => 'Datei kann nicht gelesen werden';

  @override
  String get importConfigTitle => 'Konfiguration importieren';

  @override
  String get importConfigMessage =>
      'Die importierte Konfiguration wird mit der bestehenden Serverliste zusammengeführt. Fortfahren?';

  @override
  String get importAction => 'Importieren';

  @override
  String get configImported => 'Konfiguration erfolgreich importiert';

  @override
  String importFailed(String error) {
    return 'Import fehlgeschlagen: $error';
  }

  @override
  String get editServer => 'Server bearbeiten';

  @override
  String get basicInfo => 'Grundlegende Infos';

  @override
  String get nameLabel => 'Name';

  @override
  String get nameHint => 'z.B. Mein Cloud-Server';

  @override
  String get pleaseEnterName => 'Bitte geben Sie einen Namen ein';

  @override
  String get connectionAddress => 'Verbindungsadresse';

  @override
  String get serverAddress => 'Serveradresse';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Bitte geben Sie eine Adresse ein';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Bitte geben Sie einen Port ein';

  @override
  String get invalidPort => 'Ungültige Portnummer';

  @override
  String get encryptedConnection => 'Verschlüsselte Verbindung (WSS)';

  @override
  String get cloudServerRecommended => 'Empfohlen für Cloud-Server';

  @override
  String get authMethod => 'Authentifizierung';

  @override
  String get passwordLabel => 'Passwort';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Gateway-Passwort eingeben';

  @override
  String get pleaseEnterPassword => 'Bitte geben Sie ein Passwort ein';

  @override
  String get passwordHelp =>
      'Das Passwort befindet sich unter gateway.auth.password in ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Aus OpenClaw-Konfiguration abrufen';

  @override
  String get pleaseEnterToken => 'Bitte geben Sie einen Token ein';

  @override
  String get tokenHelp =>
      'Der Token befindet sich unter gateway.auth.token in ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Verbindung erfolgreich';

  @override
  String get connectionFailed => 'Verbindung fehlgeschlagen';

  @override
  String get testConnection => 'Verbindung testen';

  @override
  String get save => 'Speichern';

  @override
  String get serverUpdated => 'Server aktualisiert';

  @override
  String get serverAdded => 'Server hinzugefügt';

  @override
  String get notConnectedToServer => 'Nicht mit Server verbunden';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Verbindung wird hergestellt...';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get disconnected => 'Getrennt';

  @override
  String get connectAction => 'Verbinden';

  @override
  String get connected => 'Verbunden';

  @override
  String get connectingTooltip => 'Verbindung wird hergestellt';

  @override
  String get connectionError => 'Verbindungsfehler';

  @override
  String get startChatting => 'Chat starten';

  @override
  String get chatHint => 'Nachricht eingeben, um zu chatten';

  @override
  String get suggestionHello => 'Hallo';

  @override
  String get suggestionWriteCode => 'Hilf mir beim Programmieren';

  @override
  String get suggestionSummarize => 'Fasse diesen Artikel zusammen';

  @override
  String get addressLabel => 'Adresse';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Aktiviert';

  @override
  String get tlsDisabled => 'Deaktiviert';

  @override
  String get switchServer => 'Server wechseln';

  @override
  String get clearChatHistory => 'Chatverlauf löschen';

  @override
  String get serverSettings => 'Servereinstellungen';

  @override
  String get defaultBadge => 'Standard';

  @override
  String get addressCopied => 'Adresse kopiert';

  @override
  String get copyAddress => 'Adresse kopieren';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get justNow => 'Gerade eben';

  @override
  String minutesAgo(int minutes) {
    return 'vor $minutes Min.';
  }

  @override
  String hoursAgo(int hours) {
    return 'vor $hours Std.';
  }

  @override
  String daysAgo(int days) {
    return 'vor $days Tagen';
  }

  @override
  String get inputMessageHint => 'Nachricht eingeben...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Verbindung zum Server $address nicht möglich\nBitte prüfen Sie:\n• Serveradresse und Port sind korrekt\n• Gerät befindet sich im selben Netzwerk wie der Server\n• Server ist in Betrieb\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Zeitüberschreitung bei Verbindung zu $address\nBitte prüfen Sie:\n• Serveradresse ist korrekt\n• Keine Firewall-Einschränkungen\n• Gerätenetzwerk funktioniert';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Netzwerkprüfung fehlgeschlagen: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket-Handshake-Zeitüberschreitung, Server hat nicht auf die Upgrade-Anfrage geantwortet';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket-Verbindungsfehler: $error';
  }

  @override
  String get errorServerClosedConnection =>
      'Server hat die Verbindung geschlossen';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Server hat die Verbindung geschlossen$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Zeitüberschreitung beim Gateway-Protokoll-Handshake\nWebSocket verbunden, aber der Server hat die Authentifizierung nicht abgeschlossen.\nBitte prüfen Sie:\n• Auth Token ist korrekt\n• Server-Gateway-Version ist kompatibel';

  @override
  String get errorWebSocketTimeout =>
      'WebSocket-Verbindungs-Zeitüberschreitung';

  @override
  String get errorConnectionRefused =>
      'Verbindung abgelehnt\nServer führt möglicherweise keinen Gateway-Dienst aus';

  @override
  String get errorNetworkUnreachable =>
      'Netzwerk nicht erreichbar\nBitte prüfen Sie die Netzwerkverbindung des Geräts';

  @override
  String get errorConnectionReset =>
      'Verbindung zurückgesetzt\nServer unterstützt möglicherweise keine WebSocket-Verbindungen';

  @override
  String get errorTlsCertificate =>
      'TLS-Zertifikatfehler\nFür LAN-Verbindungen versuchen Sie, die verschlüsselte Verbindung (WSS) zu deaktivieren';

  @override
  String errorGenericConnection(String error) {
    return 'Verbindung fehlgeschlagen: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Authentifizierung fehlgeschlagen: $error';
  }
}
