// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class SHr extends S {
  SHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Izvoz konfiguracije';

  @override
  String get importConfig => 'Uvoz konfiguracije';

  @override
  String get noServers => 'Još nema poslužitelja';

  @override
  String get addServerHint =>
      'Dodajte OpenClaw poslužitelj za početak razgovora s AI-jem';

  @override
  String get addServer => 'Dodaj poslužitelj';

  @override
  String serverCount(int count) {
    return 'Poslužitelji ($count)';
  }

  @override
  String get confirmDelete => 'Potvrdi brisanje';

  @override
  String confirmDeleteMessage(String name) {
    return 'Jeste li sigurni da želite obrisati \"$name\"?';
  }

  @override
  String get cancel => 'Odustani';

  @override
  String get delete => 'Obriši';

  @override
  String get serverDeleted => 'Poslužitelj je obrisan';

  @override
  String get configBackupSubject => 'Sigurnosna kopija konfiguracije ClawChat';

  @override
  String get configExported => 'Konfiguracija je izvezena';

  @override
  String exportFailed(String error) {
    return 'Izvoz nije uspio: $error';
  }

  @override
  String get cannotReadFile => 'Datoteku nije moguće pročitati';

  @override
  String get importConfigTitle => 'Uvoz konfiguracije';

  @override
  String get importConfigMessage =>
      'Uvezena konfiguracija bit će spojena s postojećim popisom poslužitelja. Nastaviti?';

  @override
  String get importAction => 'Uvezi';

  @override
  String get configImported => 'Konfiguracija je uspješno uvezena';

  @override
  String importFailed(String error) {
    return 'Uvoz nije uspio: $error';
  }

  @override
  String get editServer => 'Uredi poslužitelj';

  @override
  String get basicInfo => 'Osnovne informacije';

  @override
  String get nameLabel => 'Naziv';

  @override
  String get nameHint => 'npr. Moj cloud poslužitelj';

  @override
  String get pleaseEnterName => 'Unesite naziv';

  @override
  String get connectionAddress => 'Adresa veze';

  @override
  String get serverAddress => 'Adresa poslužitelja';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Unesite adresu';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Unesite port';

  @override
  String get invalidPort => 'Nevažeći broj porta';

  @override
  String get encryptedConnection => 'Šifrirana veza (WSS)';

  @override
  String get cloudServerRecommended => 'Preporučeno za cloud poslužitelje';

  @override
  String get authMethod => 'Autentifikacija';

  @override
  String get passwordLabel => 'Lozinka';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Unesite Gateway lozinku';

  @override
  String get pleaseEnterPassword => 'Unesite lozinku';

  @override
  String get passwordHelp =>
      'Lozinka se nalazi na gateway.auth.password u ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Dohvati iz OpenClaw konfiguracije';

  @override
  String get pleaseEnterToken => 'Unesite token';

  @override
  String get tokenHelp =>
      'Token se nalazi na gateway.auth.token u ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Uspješna veza';

  @override
  String get connectionFailed => 'Veza nije uspjela';

  @override
  String get testConnection => 'Testiraj vezu';

  @override
  String get save => 'Spremi';

  @override
  String get serverUpdated => 'Poslužitelj je ažuriran';

  @override
  String get serverAdded => 'Poslužitelj je dodan';

  @override
  String get notConnectedToServer => 'Nije spojeno na poslužitelj';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Povezivanje...';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get disconnected => 'Odspojeno';

  @override
  String get connectAction => 'Poveži se';

  @override
  String get connected => 'Spojeno';

  @override
  String get connectingTooltip => 'Povezivanje';

  @override
  String get connectionError => 'Greška pri povezivanju';

  @override
  String get startChatting => 'Započni razgovor';

  @override
  String get chatHint => 'Upišite poruku za razgovor';

  @override
  String get suggestionHello => 'Bok';

  @override
  String get suggestionWriteCode => 'Pomozi mi napisati kod';

  @override
  String get suggestionSummarize => 'Sažmi ovaj članak';

  @override
  String get addressLabel => 'Adresa';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Omogućeno';

  @override
  String get tlsDisabled => 'Onemogućeno';

  @override
  String get switchServer => 'Promijeni poslužitelj';

  @override
  String get clearChatHistory => 'Obriši povijest razgovora';

  @override
  String get serverSettings => 'Postavke poslužitelja';

  @override
  String get defaultBadge => 'Zadano';

  @override
  String get addressCopied => 'Adresa kopirana';

  @override
  String get copyAddress => 'Kopiraj adresu';

  @override
  String get edit => 'Uredi';

  @override
  String get justNow => 'Upravo sada';

  @override
  String minutesAgo(int minutes) {
    return 'prije $minutes min';
  }

  @override
  String hoursAgo(int hours) {
    return 'prije $hours h';
  }

  @override
  String daysAgo(int days) {
    return 'prije $days d';
  }

  @override
  String get inputMessageHint => 'Upišite poruku...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Nije moguće povezati se s poslužiteljem $address\nProvjerite:\n• Adresa i port poslužitelja su ispravni\n• Uređaj je na istoj mreži kao poslužitelj\n• Poslužitelj radi\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Isteklo je vrijeme za povezivanje s $address\nProvjerite:\n• Adresa poslužitelja je ispravna\n• Nema ograničenja vatrozida\n• Mreža uređaja radi';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Provjera mreže nije uspjela: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Isteklo je vrijeme WebSocket rukovanja, poslužitelj nije odgovorio na zahtjev za nadogradnju';

  @override
  String errorWebSocketError(String error) {
    return 'Greška WebSocket veze: $error';
  }

  @override
  String get errorServerClosedConnection => 'Poslužitelj je zatvorio vezu';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Poslužitelj je zatvorio vezu$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Isteklo je vrijeme rukovanja Gateway protokola\nWebSocket je spojen, ali poslužitelj nije dovršio autentifikaciju.\nProvjerite:\n• Auth Token je ispravan\n• Verzija Gateway poslužitelja je kompatibilna';

  @override
  String get errorWebSocketTimeout => 'Isteklo je vrijeme WebSocket veze';

  @override
  String get errorConnectionRefused =>
      'Veza odbijena\nPoslužitelj možda ne pokreće Gateway uslugu';

  @override
  String get errorNetworkUnreachable =>
      'Mreža nedostupna\nProvjerite mrežnu vezu uređaja';

  @override
  String get errorConnectionReset =>
      'Veza resetirana\nPoslužitelj možda ne podržava WebSocket veze';

  @override
  String get errorTlsCertificate =>
      'Greška TLS certifikata\nZa LAN veze pokušajte onemogućiti šifriranu vezu (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Veza nije uspjela: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Autentifikacija nije uspjela: $error';
  }
}
