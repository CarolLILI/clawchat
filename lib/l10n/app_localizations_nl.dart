// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class SNl extends S {
  SNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Configuratie exporteren';

  @override
  String get importConfig => 'Configuratie importeren';

  @override
  String get noServers => 'Nog geen servers';

  @override
  String get addServerHint =>
      'Voeg een OpenClaw-server toe om te beginnen met chatten met AI';

  @override
  String get addServer => 'Server toevoegen';

  @override
  String serverCount(int count) {
    return 'Servers ($count)';
  }

  @override
  String get confirmDelete => 'Verwijderen bevestigen';

  @override
  String confirmDeleteMessage(String name) {
    return 'Weet je zeker dat je \"$name\" wilt verwijderen?';
  }

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get serverDeleted => 'Server verwijderd';

  @override
  String get configBackupSubject => 'ClawChat configuratie-backup';

  @override
  String get configExported => 'Configuratie geëxporteerd';

  @override
  String exportFailed(String error) {
    return 'Export mislukt: $error';
  }

  @override
  String get cannotReadFile => 'Kan bestand niet lezen';

  @override
  String get importConfigTitle => 'Configuratie importeren';

  @override
  String get importConfigMessage =>
      'De geïmporteerde configuratie wordt samengevoegd met de bestaande serverlijst. Doorgaan?';

  @override
  String get importAction => 'Importeren';

  @override
  String get configImported => 'Configuratie succesvol geïmporteerd';

  @override
  String importFailed(String error) {
    return 'Import mislukt: $error';
  }

  @override
  String get editServer => 'Server bewerken';

  @override
  String get basicInfo => 'Basisinformatie';

  @override
  String get nameLabel => 'Naam';

  @override
  String get nameHint => 'bijv. Mijn cloudserver';

  @override
  String get pleaseEnterName => 'Voer een naam in';

  @override
  String get connectionAddress => 'Verbindingsadres';

  @override
  String get serverAddress => 'Serveradres';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Voer een adres in';

  @override
  String get portLabel => 'Poort';

  @override
  String get pleaseEnterPort => 'Voer een poort in';

  @override
  String get invalidPort => 'Ongeldig poortnummer';

  @override
  String get encryptedConnection => 'Versleutelde verbinding (WSS)';

  @override
  String get cloudServerRecommended => 'Aanbevolen voor cloudservers';

  @override
  String get authMethod => 'Authenticatie';

  @override
  String get passwordLabel => 'Wachtwoord';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Voer het Gateway-wachtwoord in';

  @override
  String get pleaseEnterPassword => 'Voer een wachtwoord in';

  @override
  String get passwordHelp =>
      'Wachtwoord staat bij gateway.auth.password in ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Ophalen uit OpenClaw-configuratie';

  @override
  String get pleaseEnterToken => 'Voer een token in';

  @override
  String get tokenHelp =>
      'Token staat bij gateway.auth.token in ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Verbinding geslaagd';

  @override
  String get connectionFailed => 'Verbinding mislukt';

  @override
  String get testConnection => 'Verbinding testen';

  @override
  String get save => 'Opslaan';

  @override
  String get serverUpdated => 'Server bijgewerkt';

  @override
  String get serverAdded => 'Server toegevoegd';

  @override
  String get notConnectedToServer => 'Niet verbonden met server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Verbinden...';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get disconnected => 'Verbroken';

  @override
  String get connectAction => 'Verbinden';

  @override
  String get connected => 'Verbonden';

  @override
  String get connectingTooltip => 'Verbinden';

  @override
  String get connectionError => 'Verbindingsfout';

  @override
  String get startChatting => 'Begin met chatten';

  @override
  String get chatHint => 'Typ een bericht om te chatten';

  @override
  String get suggestionHello => 'Hallo';

  @override
  String get suggestionWriteCode => 'Help me code te schrijven';

  @override
  String get suggestionSummarize => 'Vat dit artikel samen';

  @override
  String get addressLabel => 'Adres';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Ingeschakeld';

  @override
  String get tlsDisabled => 'Uitgeschakeld';

  @override
  String get switchServer => 'Server wisselen';

  @override
  String get clearChatHistory => 'Chatgeschiedenis wissen';

  @override
  String get serverSettings => 'Serverinstellingen';

  @override
  String get defaultBadge => 'Standaard';

  @override
  String get addressCopied => 'Adres gekopieerd';

  @override
  String get copyAddress => 'Adres kopiëren';

  @override
  String get edit => 'Bewerken';

  @override
  String get justNow => 'Zojuist';

  @override
  String minutesAgo(int minutes) {
    return '$minutes min geleden';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours uur geleden';
  }

  @override
  String daysAgo(int days) {
    return '$days dagen geleden';
  }

  @override
  String get inputMessageHint => 'Typ een bericht...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Kan niet verbinden met server $address\nControleer:\n• Serveradres en poort zijn correct\n• Apparaat is op hetzelfde netwerk als de server\n• Server is actief\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Verbinding met $address is verlopen\nControleer:\n• Serveradres is correct\n• Geen firewallbeperkingen\n• Apparaatnetwerk werkt';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Netwerkcontrole mislukt: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Time-out bij WebSocket-handshake, server reageerde niet op het upgrade-verzoek';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket-verbindingsfout: $error';
  }

  @override
  String get errorServerClosedConnection =>
      'Server heeft de verbinding gesloten';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Server heeft de verbinding gesloten$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Time-out bij Gateway-protocolhandshake\nWebSocket verbonden, maar server heeft authenticatie niet voltooid.\nControleer:\n• Auth Token is correct\n• Gateway-versie van de server is compatibel';

  @override
  String get errorWebSocketTimeout => 'Time-out bij WebSocket-verbinding';

  @override
  String get errorConnectionRefused =>
      'Verbinding geweigerd\nServer draait mogelijk geen Gateway-service';

  @override
  String get errorNetworkUnreachable =>
      'Netwerk onbereikbaar\nControleer de netwerkverbinding van het apparaat';

  @override
  String get errorConnectionReset =>
      'Verbinding gereset\nServer ondersteunt mogelijk geen WebSocket-verbindingen';

  @override
  String get errorTlsCertificate =>
      'TLS-certificaatfout\nProbeer voor LAN-verbindingen de versleutelde verbinding (WSS) uit te schakelen';

  @override
  String errorGenericConnection(String error) {
    return 'Verbinding mislukt: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Authenticatie mislukt: $error';
  }
}
