// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class SDa extends S {
  SDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Eksportér konfiguration';

  @override
  String get importConfig => 'Importér konfiguration';

  @override
  String get noServers => 'Ingen servere endnu';

  @override
  String get addServerHint =>
      'Tilføj en OpenClaw-server for at begynde at chatte med AI';

  @override
  String get addServer => 'Tilføj server';

  @override
  String serverCount(int count) {
    return 'Servere ($count)';
  }

  @override
  String get confirmDelete => 'Bekræft sletning';

  @override
  String confirmDeleteMessage(String name) {
    return 'Er du sikker på, at du vil slette \"$name\"?';
  }

  @override
  String get cancel => 'Annuller';

  @override
  String get delete => 'Slet';

  @override
  String get serverDeleted => 'Server slettet';

  @override
  String get configBackupSubject => 'ClawChat konfigurationssikkerhedskopi';

  @override
  String get configExported => 'Konfiguration eksporteret';

  @override
  String exportFailed(String error) {
    return 'Eksport mislykkedes: $error';
  }

  @override
  String get cannotReadFile => 'Kan ikke læse filen';

  @override
  String get importConfigTitle => 'Importér konfiguration';

  @override
  String get importConfigMessage =>
      'Importeret konfiguration vil blive flettet med den eksisterende serverliste. Fortsæt?';

  @override
  String get importAction => 'Importér';

  @override
  String get configImported => 'Konfiguration importeret';

  @override
  String importFailed(String error) {
    return 'Import mislykkedes: $error';
  }

  @override
  String get editServer => 'Rediger server';

  @override
  String get basicInfo => 'Grundlæggende oplysninger';

  @override
  String get nameLabel => 'Navn';

  @override
  String get nameHint => 'f.eks. Min cloudserver';

  @override
  String get pleaseEnterName => 'Indtast venligst et navn';

  @override
  String get connectionAddress => 'Forbindelsesadresse';

  @override
  String get serverAddress => 'Serveradresse';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Indtast venligst en adresse';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Indtast venligst en port';

  @override
  String get invalidPort => 'Ugyldigt portnummer';

  @override
  String get encryptedConnection => 'Krypteret forbindelse (WSS)';

  @override
  String get cloudServerRecommended => 'Anbefales til cloudservere';

  @override
  String get authMethod => 'Godkendelse';

  @override
  String get passwordLabel => 'Adgangskode';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Indtast Gateway-adgangskode';

  @override
  String get pleaseEnterPassword => 'Indtast venligst en adgangskode';

  @override
  String get passwordHelp =>
      'Adgangskoden findes på gateway.auth.password i ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Hent fra OpenClaw-konfiguration';

  @override
  String get pleaseEnterToken => 'Indtast venligst en token';

  @override
  String get tokenHelp =>
      'Token findes på gateway.auth.token i ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Forbindelse oprettet';

  @override
  String get connectionFailed => 'Forbindelse mislykkedes';

  @override
  String get testConnection => 'Test forbindelse';

  @override
  String get save => 'Gem';

  @override
  String get serverUpdated => 'Server opdateret';

  @override
  String get serverAdded => 'Server tilføjet';

  @override
  String get notConnectedToServer => 'Ikke forbundet til server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Forbinder...';

  @override
  String get retry => 'Prøv igen';

  @override
  String get disconnected => 'Afbrudt';

  @override
  String get connectAction => 'Opret forbindelse';

  @override
  String get connected => 'Forbundet';

  @override
  String get connectingTooltip => 'Forbinder';

  @override
  String get connectionError => 'Forbindelsesfejl';

  @override
  String get startChatting => 'Begynd at chatte';

  @override
  String get chatHint => 'Skriv en besked for at chatte';

  @override
  String get suggestionHello => 'Hej';

  @override
  String get suggestionWriteCode => 'Hjælp mig med at skrive kode';

  @override
  String get suggestionSummarize => 'Opsummer denne artikel';

  @override
  String get addressLabel => 'Adresse';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Aktiveret';

  @override
  String get tlsDisabled => 'Deaktiveret';

  @override
  String get switchServer => 'Skift server';

  @override
  String get clearChatHistory => 'Ryd chathistorik';

  @override
  String get serverSettings => 'Serverindstillinger';

  @override
  String get defaultBadge => 'Standard';

  @override
  String get addressCopied => 'Adresse kopieret';

  @override
  String get copyAddress => 'Kopiér adresse';

  @override
  String get edit => 'Rediger';

  @override
  String get justNow => 'Lige nu';

  @override
  String minutesAgo(int minutes) {
    return '${minutes}m siden';
  }

  @override
  String hoursAgo(int hours) {
    return '${hours}t siden';
  }

  @override
  String daysAgo(int days) {
    return '${days}d siden';
  }

  @override
  String get inputMessageHint => 'Skriv en besked...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Kan ikke oprette forbindelse til server $address\nKontrollér venligst:\n• Serveradresse og port er korrekte\n• Enheden er på samme netværk som serveren\n• Serveren kører\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Forbindelsen til $address fik timeout\nKontrollér venligst:\n• Serveradressen er korrekt\n• Ingen firewall-begrænsninger\n• Enhedens netværk fungerer';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Netværkskontrol mislykkedes: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket-håndtryk fik timeout, serveren svarede ikke på opgraderingsanmodningen';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket-forbindelsesfejl: $error';
  }

  @override
  String get errorServerClosedConnection => 'Serveren lukkede forbindelsen';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Serveren lukkede forbindelsen$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway-protokolhåndtryk fik timeout\nWebSocket forbundet, men serveren fuldførte ikke godkendelsen.\nKontrollér venligst:\n• Auth Token er korrekt\n• Serverens Gateway-version er kompatibel';

  @override
  String get errorWebSocketTimeout => 'WebSocket-forbindelse fik timeout';

  @override
  String get errorConnectionRefused =>
      'Forbindelse afvist\nServeren kører muligvis ikke Gateway-tjenesten';

  @override
  String get errorNetworkUnreachable =>
      'Netværk utilgængeligt\nKontrollér venligst enhedens netværksforbindelse';

  @override
  String get errorConnectionReset =>
      'Forbindelse nulstillet\nServeren understøtter muligvis ikke WebSocket-forbindelser';

  @override
  String get errorTlsCertificate =>
      'TLS-certifikatfejl\nFor LAN-forbindelser, prøv at deaktivere krypteret forbindelse (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Forbindelse mislykkedes: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Godkendelse mislykkedes: $error';
  }
}
