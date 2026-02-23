// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class SNb extends S {
  SNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Eksporter konfigurasjon';

  @override
  String get importConfig => 'Importer konfigurasjon';

  @override
  String get noServers => 'Ingen servere ennå';

  @override
  String get addServerHint =>
      'Legg til en OpenClaw-server for å begynne å chatte med AI';

  @override
  String get addServer => 'Legg til server';

  @override
  String serverCount(int count) {
    return 'Servere ($count)';
  }

  @override
  String get confirmDelete => 'Bekreft sletting';

  @override
  String confirmDeleteMessage(String name) {
    return 'Er du sikker på at du vil slette \"$name\"?';
  }

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Slett';

  @override
  String get serverDeleted => 'Server slettet';

  @override
  String get configBackupSubject => 'ClawChat konfigurasjonssikkerhetskopi';

  @override
  String get configExported => 'Konfigurasjon eksportert';

  @override
  String exportFailed(String error) {
    return 'Eksport mislyktes: $error';
  }

  @override
  String get cannotReadFile => 'Kan ikke lese filen';

  @override
  String get importConfigTitle => 'Importer konfigurasjon';

  @override
  String get importConfigMessage =>
      'Importert konfigurasjon vil bli slått sammen med den eksisterende serverlisten. Fortsette?';

  @override
  String get importAction => 'Importer';

  @override
  String get configImported => 'Konfigurasjon importert';

  @override
  String importFailed(String error) {
    return 'Import mislyktes: $error';
  }

  @override
  String get editServer => 'Rediger server';

  @override
  String get basicInfo => 'Grunnleggende informasjon';

  @override
  String get nameLabel => 'Navn';

  @override
  String get nameHint => 'f.eks. Min skyserver';

  @override
  String get pleaseEnterName => 'Vennligst skriv inn et navn';

  @override
  String get connectionAddress => 'Tilkoblingsadresse';

  @override
  String get serverAddress => 'Serveradresse';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Vennligst skriv inn en adresse';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Vennligst skriv inn en port';

  @override
  String get invalidPort => 'Ugyldig portnummer';

  @override
  String get encryptedConnection => 'Kryptert tilkobling (WSS)';

  @override
  String get cloudServerRecommended => 'Anbefalt for skyservere';

  @override
  String get authMethod => 'Autentisering';

  @override
  String get passwordLabel => 'Passord';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Skriv inn Gateway-passord';

  @override
  String get pleaseEnterPassword => 'Vennligst skriv inn et passord';

  @override
  String get passwordHelp =>
      'Passordet finner du på gateway.auth.password i ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Hent fra OpenClaw-konfigurasjon';

  @override
  String get pleaseEnterToken => 'Vennligst skriv inn en token';

  @override
  String get tokenHelp =>
      'Token finner du på gateway.auth.token i ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Tilkobling vellykket';

  @override
  String get connectionFailed => 'Tilkobling mislyktes';

  @override
  String get testConnection => 'Test tilkobling';

  @override
  String get save => 'Lagre';

  @override
  String get serverUpdated => 'Server oppdatert';

  @override
  String get serverAdded => 'Server lagt til';

  @override
  String get notConnectedToServer => 'Ikke tilkoblet server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Kobler til...';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get disconnected => 'Frakoblet';

  @override
  String get connectAction => 'Koble til';

  @override
  String get connected => 'Tilkoblet';

  @override
  String get connectingTooltip => 'Kobler til';

  @override
  String get connectionError => 'Tilkoblingsfeil';

  @override
  String get startChatting => 'Begynn å chatte';

  @override
  String get chatHint => 'Skriv en melding for å chatte';

  @override
  String get suggestionHello => 'Hei';

  @override
  String get suggestionWriteCode => 'Hjelp meg å skrive kode';

  @override
  String get suggestionSummarize => 'Oppsummer denne artikkelen';

  @override
  String get addressLabel => 'Adresse';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Aktivert';

  @override
  String get tlsDisabled => 'Deaktivert';

  @override
  String get switchServer => 'Bytt server';

  @override
  String get clearChatHistory => 'Tøm chattehistorikk';

  @override
  String get serverSettings => 'Serverinnstillinger';

  @override
  String get defaultBadge => 'Standard';

  @override
  String get addressCopied => 'Adresse kopiert';

  @override
  String get copyAddress => 'Kopier adresse';

  @override
  String get edit => 'Rediger';

  @override
  String get justNow => 'Akkurat nå';

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
  String get inputMessageHint => 'Skriv en melding...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Kan ikke koble til server $address\nVennligst sjekk:\n• Serveradresse og port er korrekte\n• Enheten er på samme nettverk som serveren\n• Serveren kjører\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Tilkobling til $address ble tidsavbrutt\nVennligst sjekk:\n• Serveradressen er korrekt\n• Ingen brannmurrestriksjoner\n• Enhetens nettverk fungerer';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Nettverkssjekk mislyktes: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket-håndtrykk ble tidsavbrutt, serveren svarte ikke på oppgraderingsforespørselen';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket-tilkoblingsfeil: $error';
  }

  @override
  String get errorServerClosedConnection => 'Serveren lukket tilkoblingen';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Serveren lukket tilkoblingen$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway-protokollhåndtrykk ble tidsavbrutt\nWebSocket tilkoblet, men serveren fullførte ikke autentiseringen.\nVennligst sjekk:\n• Auth Token er korrekt\n• Serverens Gateway-versjon er kompatibel';

  @override
  String get errorWebSocketTimeout => 'WebSocket-tilkobling ble tidsavbrutt';

  @override
  String get errorConnectionRefused =>
      'Tilkobling avvist\nServeren kjører kanskje ikke Gateway-tjenesten';

  @override
  String get errorNetworkUnreachable =>
      'Nettverk utilgjengelig\nVennligst sjekk enhetens nettverkstilkobling';

  @override
  String get errorConnectionReset =>
      'Tilkobling tilbakestilt\nServeren støtter kanskje ikke WebSocket-tilkoblinger';

  @override
  String get errorTlsCertificate =>
      'TLS-sertifikatfeil\nFor LAN-tilkoblinger, prøv å deaktivere kryptert tilkobling (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Tilkobling mislyktes: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Autentisering mislyktes: $error';
  }
}
