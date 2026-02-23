// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class SSv extends S {
  SSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Exportera konfiguration';

  @override
  String get importConfig => 'Importera konfiguration';

  @override
  String get noServers => 'Inga servrar ännu';

  @override
  String get addServerHint =>
      'Lägg till en OpenClaw-server för att börja chatta med AI';

  @override
  String get addServer => 'Lägg till server';

  @override
  String serverCount(int count) {
    return 'Servrar ($count)';
  }

  @override
  String get confirmDelete => 'Bekräfta borttagning';

  @override
  String confirmDeleteMessage(String name) {
    return 'Är du säker på att du vill ta bort \"$name\"?';
  }

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Ta bort';

  @override
  String get serverDeleted => 'Server borttagen';

  @override
  String get configBackupSubject => 'ClawChat konfigurationssäkerhetskopia';

  @override
  String get configExported => 'Konfiguration exporterad';

  @override
  String exportFailed(String error) {
    return 'Export misslyckades: $error';
  }

  @override
  String get cannotReadFile => 'Kan inte läsa filen';

  @override
  String get importConfigTitle => 'Importera konfiguration';

  @override
  String get importConfigMessage =>
      'Importerad konfiguration kommer att sammanfogas med den befintliga serverlistan. Fortsätta?';

  @override
  String get importAction => 'Importera';

  @override
  String get configImported => 'Konfiguration importerad';

  @override
  String importFailed(String error) {
    return 'Import misslyckades: $error';
  }

  @override
  String get editServer => 'Redigera server';

  @override
  String get basicInfo => 'Grundläggande information';

  @override
  String get nameLabel => 'Namn';

  @override
  String get nameHint => 't.ex. Min molnserver';

  @override
  String get pleaseEnterName => 'Ange ett namn';

  @override
  String get connectionAddress => 'Anslutningsadress';

  @override
  String get serverAddress => 'Serveradress';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Ange en adress';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Ange en port';

  @override
  String get invalidPort => 'Ogiltigt portnummer';

  @override
  String get encryptedConnection => 'Krypterad anslutning (WSS)';

  @override
  String get cloudServerRecommended => 'Rekommenderas för molnservrar';

  @override
  String get authMethod => 'Autentisering';

  @override
  String get passwordLabel => 'Lösenord';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Ange Gateway-lösenord';

  @override
  String get pleaseEnterPassword => 'Ange ett lösenord';

  @override
  String get passwordHelp =>
      'Lösenordet finns på gateway.auth.password i ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Hämta från OpenClaw-konfiguration';

  @override
  String get pleaseEnterToken => 'Ange en token';

  @override
  String get tokenHelp =>
      'Token finns på gateway.auth.token i ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Anslutningen lyckades';

  @override
  String get connectionFailed => 'Anslutningen misslyckades';

  @override
  String get testConnection => 'Testa anslutning';

  @override
  String get save => 'Spara';

  @override
  String get serverUpdated => 'Server uppdaterad';

  @override
  String get serverAdded => 'Server tillagd';

  @override
  String get notConnectedToServer => 'Inte ansluten till server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Ansluter...';

  @override
  String get retry => 'Försök igen';

  @override
  String get disconnected => 'Frånkopplad';

  @override
  String get connectAction => 'Anslut';

  @override
  String get connected => 'Ansluten';

  @override
  String get connectingTooltip => 'Ansluter';

  @override
  String get connectionError => 'Anslutningsfel';

  @override
  String get startChatting => 'Börja chatta';

  @override
  String get chatHint => 'Skriv ett meddelande för att chatta';

  @override
  String get suggestionHello => 'Hej';

  @override
  String get suggestionWriteCode => 'Hjälp mig skriva kod';

  @override
  String get suggestionSummarize => 'Sammanfatta den här artikeln';

  @override
  String get addressLabel => 'Adress';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Aktiverad';

  @override
  String get tlsDisabled => 'Inaktiverad';

  @override
  String get switchServer => 'Byt server';

  @override
  String get clearChatHistory => 'Rensa chatthistorik';

  @override
  String get serverSettings => 'Serverinställningar';

  @override
  String get defaultBadge => 'Standard';

  @override
  String get addressCopied => 'Adress kopierad';

  @override
  String get copyAddress => 'Kopiera adress';

  @override
  String get edit => 'Redigera';

  @override
  String get justNow => 'Just nu';

  @override
  String minutesAgo(int minutes) {
    return '${minutes}m sedan';
  }

  @override
  String hoursAgo(int hours) {
    return '${hours}t sedan';
  }

  @override
  String daysAgo(int days) {
    return '${days}d sedan';
  }

  @override
  String get inputMessageHint => 'Skriv ett meddelande...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Kan inte ansluta till server $address\nKontrollera:\n• Serveradress och port är korrekta\n• Enheten är på samma nätverk som servern\n• Servern körs\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Anslutningen till $address tog för lång tid\nKontrollera:\n• Serveradressen är korrekt\n• Inga brandväggsrestriktioner\n• Enhetens nätverk fungerar';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Nätverkskontroll misslyckades: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket-handskakning tog för lång tid, servern svarade inte på uppgraderingsförfrågan';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket-anslutningsfel: $error';
  }

  @override
  String get errorServerClosedConnection => 'Servern stängde anslutningen';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Servern stängde anslutningen$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway-protokollhandskakning tog för lång tid\nWebSocket ansluten, men servern slutförde inte autentiseringen.\nKontrollera:\n• Auth Token är korrekt\n• Serverns Gateway-version är kompatibel';

  @override
  String get errorWebSocketTimeout => 'WebSocket-anslutningen tog för lång tid';

  @override
  String get errorConnectionRefused =>
      'Anslutningen nekades\nServern kanske inte kör Gateway-tjänsten';

  @override
  String get errorNetworkUnreachable =>
      'Nätverket kan inte nås\nKontrollera enhetens nätverksanslutning';

  @override
  String get errorConnectionReset =>
      'Anslutningen återställdes\nServern kanske inte stöder WebSocket-anslutningar';

  @override
  String get errorTlsCertificate =>
      'TLS-certifikatfel\nFör LAN-anslutningar, prova att inaktivera krypterad anslutning (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Anslutningen misslyckades: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Autentisering misslyckades: $error';
  }
}
