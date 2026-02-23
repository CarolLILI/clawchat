// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class SCs extends S {
  SCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Exportovat konfiguraci';

  @override
  String get importConfig => 'Importovat konfiguraci';

  @override
  String get noServers => 'Žádné servery';

  @override
  String get addServerHint =>
      'Přidejte server OpenClaw a začněte chatovat s AI';

  @override
  String get addServer => 'Přidat server';

  @override
  String serverCount(int count) {
    return 'Servery ($count)';
  }

  @override
  String get confirmDelete => 'Potvrdit smazání';

  @override
  String confirmDeleteMessage(String name) {
    return 'Opravdu chcete smazat \"$name\"?';
  }

  @override
  String get cancel => 'Zrušit';

  @override
  String get delete => 'Smazat';

  @override
  String get serverDeleted => 'Server smazán';

  @override
  String get configBackupSubject => 'Záloha konfigurace ClawChat';

  @override
  String get configExported => 'Konfigurace exportována';

  @override
  String exportFailed(String error) {
    return 'Export se nezdařil: $error';
  }

  @override
  String get cannotReadFile => 'Nelze přečíst soubor';

  @override
  String get importConfigTitle => 'Importovat konfiguraci';

  @override
  String get importConfigMessage =>
      'Importovaná konfigurace bude sloučena se stávajícím seznamem serverů. Pokračovat?';

  @override
  String get importAction => 'Importovat';

  @override
  String get configImported => 'Konfigurace úspěšně importována';

  @override
  String importFailed(String error) {
    return 'Import se nezdařil: $error';
  }

  @override
  String get editServer => 'Upravit server';

  @override
  String get basicInfo => 'Základní informace';

  @override
  String get nameLabel => 'Název';

  @override
  String get nameHint => 'např. Můj cloudový server';

  @override
  String get pleaseEnterName => 'Zadejte název';

  @override
  String get connectionAddress => 'Adresa připojení';

  @override
  String get serverAddress => 'Adresa serveru';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Zadejte adresu';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Zadejte port';

  @override
  String get invalidPort => 'Neplatné číslo portu';

  @override
  String get encryptedConnection => 'Šifrované připojení (WSS)';

  @override
  String get cloudServerRecommended => 'Doporučeno pro cloudové servery';

  @override
  String get authMethod => 'Ověření';

  @override
  String get passwordLabel => 'Heslo';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Zadejte heslo Gateway';

  @override
  String get pleaseEnterPassword => 'Zadejte heslo';

  @override
  String get passwordHelp =>
      'Heslo se nachází v gateway.auth.password v souboru ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Získat z konfigurace OpenClaw';

  @override
  String get pleaseEnterToken => 'Zadejte token';

  @override
  String get tokenHelp =>
      'Token se nachází v gateway.auth.token v souboru ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Připojení úspěšné';

  @override
  String get connectionFailed => 'Připojení selhalo';

  @override
  String get testConnection => 'Otestovat připojení';

  @override
  String get save => 'Uložit';

  @override
  String get serverUpdated => 'Server aktualizován';

  @override
  String get serverAdded => 'Server přidán';

  @override
  String get notConnectedToServer => 'Nepřipojeno k serveru';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Připojování...';

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get disconnected => 'Odpojeno';

  @override
  String get connectAction => 'Připojit';

  @override
  String get connected => 'Připojeno';

  @override
  String get connectingTooltip => 'Připojování';

  @override
  String get connectionError => 'Chyba připojení';

  @override
  String get startChatting => 'Začít chatovat';

  @override
  String get chatHint => 'Napište zprávu pro chat';

  @override
  String get suggestionHello => 'Ahoj';

  @override
  String get suggestionWriteCode => 'Pomoz mi napsat kód';

  @override
  String get suggestionSummarize => 'Shrň tento článek';

  @override
  String get addressLabel => 'Adresa';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Zapnuto';

  @override
  String get tlsDisabled => 'Vypnuto';

  @override
  String get switchServer => 'Přepnout server';

  @override
  String get clearChatHistory => 'Vymazat historii chatu';

  @override
  String get serverSettings => 'Nastavení serveru';

  @override
  String get defaultBadge => 'Výchozí';

  @override
  String get addressCopied => 'Adresa zkopírována';

  @override
  String get copyAddress => 'Kopírovat adresu';

  @override
  String get edit => 'Upravit';

  @override
  String get justNow => 'Právě teď';

  @override
  String minutesAgo(int minutes) {
    return 'před $minutes min';
  }

  @override
  String hoursAgo(int hours) {
    return 'před $hours hod';
  }

  @override
  String daysAgo(int days) {
    return 'před $days dny';
  }

  @override
  String get inputMessageHint => 'Napište zprávu...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Nelze se připojit k serveru $address\nZkontrolujte:\n• Adresa a port serveru jsou správné\n• Zařízení je ve stejné síti jako server\n• Server je spuštěn\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Vypršel časový limit připojení k $address\nZkontrolujte:\n• Adresa serveru je správná\n• Žádná omezení firewallu\n• Síť zařízení funguje';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Kontrola sítě selhala: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Vypršel časový limit handshake WebSocket, server neodpověděl na požadavek upgrade';

  @override
  String errorWebSocketError(String error) {
    return 'Chyba připojení WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Server uzavřel připojení';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Server uzavřel připojení$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Vypršel časový limit handshake protokolu Gateway\nWebSocket připojen, ale server nedokončil ověření.\nZkontrolujte:\n• Auth Token je správný\n• Verze Gateway serveru je kompatibilní';

  @override
  String get errorWebSocketTimeout =>
      'Vypršel časový limit připojení WebSocket';

  @override
  String get errorConnectionRefused =>
      'Připojení odmítnuto\nServer nemusí mít spuštěnou službu Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Síť nedostupná\nZkontrolujte síťové připojení zařízení';

  @override
  String get errorConnectionReset =>
      'Připojení resetováno\nServer nemusí podporovat připojení WebSocket';

  @override
  String get errorTlsCertificate =>
      'Chyba certifikátu TLS\nPro připojení v LAN zkuste vypnout šifrované připojení (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Připojení selhalo: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Ověření selhalo: $error';
  }
}
