// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class SSk extends S {
  SSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Exportovať konfiguráciu';

  @override
  String get importConfig => 'Importovať konfiguráciu';

  @override
  String get noServers => 'Zatiaľ žiadne servery';

  @override
  String get addServerHint =>
      'Pridajte server OpenClaw a začnite chatovať s AI';

  @override
  String get addServer => 'Pridať server';

  @override
  String serverCount(int count) {
    return 'Servery ($count)';
  }

  @override
  String get confirmDelete => 'Potvrdiť vymazanie';

  @override
  String confirmDeleteMessage(String name) {
    return 'Naozaj chcete vymazať \"$name\"?';
  }

  @override
  String get cancel => 'Zrušiť';

  @override
  String get delete => 'Vymazať';

  @override
  String get serverDeleted => 'Server bol vymazaný';

  @override
  String get configBackupSubject => 'Záloha konfigurácie ClawChat';

  @override
  String get configExported => 'Konfigurácia bola exportovaná';

  @override
  String exportFailed(String error) {
    return 'Export zlyhal: $error';
  }

  @override
  String get cannotReadFile => 'Súbor nie je možné prečítať';

  @override
  String get importConfigTitle => 'Importovať konfiguráciu';

  @override
  String get importConfigMessage =>
      'Importovaná konfigurácia bude zlúčená s existujúcim zoznamom serverov. Pokračovať?';

  @override
  String get importAction => 'Importovať';

  @override
  String get configImported => 'Konfigurácia bola úspešne importovaná';

  @override
  String importFailed(String error) {
    return 'Import zlyhal: $error';
  }

  @override
  String get editServer => 'Upraviť server';

  @override
  String get basicInfo => 'Základné informácie';

  @override
  String get nameLabel => 'Názov';

  @override
  String get nameHint => 'napr. Môj cloudový server';

  @override
  String get pleaseEnterName => 'Zadajte názov';

  @override
  String get connectionAddress => 'Adresa pripojenia';

  @override
  String get serverAddress => 'Adresa servera';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Zadajte adresu';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Zadajte port';

  @override
  String get invalidPort => 'Neplatné číslo portu';

  @override
  String get encryptedConnection => 'Šifrované pripojenie (WSS)';

  @override
  String get cloudServerRecommended => 'Odporúča sa pre cloudové servery';

  @override
  String get authMethod => 'Overenie';

  @override
  String get passwordLabel => 'Heslo';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Zadajte heslo Gateway';

  @override
  String get pleaseEnterPassword => 'Zadajte heslo';

  @override
  String get passwordHelp =>
      'Heslo sa nachádza v gateway.auth.password v ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Získať z konfigurácie OpenClaw';

  @override
  String get pleaseEnterToken => 'Zadajte token';

  @override
  String get tokenHelp =>
      'Token sa nachádza v gateway.auth.token v ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Pripojenie úspešné';

  @override
  String get connectionFailed => 'Pripojenie zlyhalo';

  @override
  String get testConnection => 'Otestovať pripojenie';

  @override
  String get save => 'Uložiť';

  @override
  String get serverUpdated => 'Server bol aktualizovaný';

  @override
  String get serverAdded => 'Server bol pridaný';

  @override
  String get notConnectedToServer => 'Nie je pripojené k serveru';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Pripájanie...';

  @override
  String get retry => 'Skúsiť znova';

  @override
  String get disconnected => 'Odpojené';

  @override
  String get connectAction => 'Pripojiť';

  @override
  String get connected => 'Pripojené';

  @override
  String get connectingTooltip => 'Pripájanie';

  @override
  String get connectionError => 'Chyba pripojenia';

  @override
  String get startChatting => 'Začať konverzáciu';

  @override
  String get chatHint => 'Napíšte správu a chatujte';

  @override
  String get suggestionHello => 'Ahoj';

  @override
  String get suggestionWriteCode => 'Pomôž mi napísať kód';

  @override
  String get suggestionSummarize => 'Zhrň tento článok';

  @override
  String get addressLabel => 'Adresa';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Zapnuté';

  @override
  String get tlsDisabled => 'Vypnuté';

  @override
  String get switchServer => 'Prepnúť server';

  @override
  String get clearChatHistory => 'Vymazať históriu chatu';

  @override
  String get serverSettings => 'Nastavenia servera';

  @override
  String get defaultBadge => 'Predvolené';

  @override
  String get addressCopied => 'Adresa skopírovaná';

  @override
  String get copyAddress => 'Kopírovať adresu';

  @override
  String get edit => 'Upraviť';

  @override
  String get justNow => 'Práve teraz';

  @override
  String minutesAgo(int minutes) {
    return 'pred $minutes min';
  }

  @override
  String hoursAgo(int hours) {
    return 'pred $hours h';
  }

  @override
  String daysAgo(int days) {
    return 'pred $days d';
  }

  @override
  String get inputMessageHint => 'Napíšte správu...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Nie je možné pripojiť sa k serveru $address\nSkontrolujte:\n• Adresa a port servera sú správne\n• Zariadenie je v rovnakej sieti ako server\n• Server je spustený\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Časový limit pripojenia k $address vypršal\nSkontrolujte:\n• Adresa servera je správna\n• Žiadne obmedzenia firewallu\n• Sieť zariadenia funguje';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Kontrola siete zlyhala: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Časový limit WebSocket handshake vypršal, server neodpovedal na požiadavku o aktualizáciu';

  @override
  String errorWebSocketError(String error) {
    return 'Chyba pripojenia WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Server uzavrel pripojenie';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Server uzavrel pripojenie$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Časový limit handshake protokolu Gateway vypršal\nWebSocket je pripojený, ale server nedokončil overenie.\nSkontrolujte:\n• Auth Token je správny\n• Verzia Gateway servera je kompatibilná';

  @override
  String get errorWebSocketTimeout =>
      'Časový limit pripojenia WebSocket vypršal';

  @override
  String get errorConnectionRefused =>
      'Pripojenie odmietnuté\nServer nemusí spúšťať službu Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Sieť nedostupná\nSkontrolujte sieťové pripojenie zariadenia';

  @override
  String get errorConnectionReset =>
      'Pripojenie bolo resetované\nServer nemusí podporovať pripojenia WebSocket';

  @override
  String get errorTlsCertificate =>
      'Chyba TLS certifikátu\nPre LAN pripojenia skúste vypnúť šifrované pripojenie (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Pripojenie zlyhalo: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Overenie zlyhalo: $error';
  }
}
