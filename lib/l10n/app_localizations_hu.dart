// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class SHu extends S {
  SHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Konfiguráció exportálása';

  @override
  String get importConfig => 'Konfiguráció importálása';

  @override
  String get noServers => 'Nincsenek szerverek';

  @override
  String get addServerHint =>
      'Adj hozzá egy OpenClaw szervert, hogy elkezdhess csevegni az AI-val';

  @override
  String get addServer => 'Szerver hozzáadása';

  @override
  String serverCount(int count) {
    return 'Szerverek ($count)';
  }

  @override
  String get confirmDelete => 'Törlés megerősítése';

  @override
  String confirmDeleteMessage(String name) {
    return 'Biztosan törölni szeretnéd a következőt: \"$name\"?';
  }

  @override
  String get cancel => 'Mégse';

  @override
  String get delete => 'Törlés';

  @override
  String get serverDeleted => 'Szerver törölve';

  @override
  String get configBackupSubject => 'ClawChat konfiguráció biztonsági mentés';

  @override
  String get configExported => 'Konfiguráció exportálva';

  @override
  String exportFailed(String error) {
    return 'Exportálás sikertelen: $error';
  }

  @override
  String get cannotReadFile => 'A fájl nem olvasható';

  @override
  String get importConfigTitle => 'Konfiguráció importálása';

  @override
  String get importConfigMessage =>
      'Az importált konfiguráció össze lesz fésülve a meglévő szerverlistával. Folytatod?';

  @override
  String get importAction => 'Importálás';

  @override
  String get configImported => 'Konfiguráció sikeresen importálva';

  @override
  String importFailed(String error) {
    return 'Importálás sikertelen: $error';
  }

  @override
  String get editServer => 'Szerver szerkesztése';

  @override
  String get basicInfo => 'Alapadatok';

  @override
  String get nameLabel => 'Név';

  @override
  String get nameHint => 'pl. Felhő szerver';

  @override
  String get pleaseEnterName => 'Adj meg egy nevet';

  @override
  String get connectionAddress => 'Csatlakozási cím';

  @override
  String get serverAddress => 'Szervercím';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Adj meg egy címet';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Adj meg egy portot';

  @override
  String get invalidPort => 'Érvénytelen portszám';

  @override
  String get encryptedConnection => 'Titkosított kapcsolat (WSS)';

  @override
  String get cloudServerRecommended => 'Felhő szerverekhez ajánlott';

  @override
  String get authMethod => 'Hitelesítés';

  @override
  String get passwordLabel => 'Jelszó';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Add meg a Gateway jelszót';

  @override
  String get pleaseEnterPassword => 'Adj meg egy jelszót';

  @override
  String get passwordHelp =>
      'A jelszó a gateway.auth.password helyen található a ~/.openclaw/openclaw.json fájlban';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Lekérés az OpenClaw konfigurációból';

  @override
  String get pleaseEnterToken => 'Adj meg egy tokent';

  @override
  String get tokenHelp =>
      'A token a gateway.auth.token helyen található a ~/.openclaw/openclaw.json fájlban';

  @override
  String get connectionSuccess => 'Sikeres csatlakozás';

  @override
  String get connectionFailed => 'Sikertelen csatlakozás';

  @override
  String get testConnection => 'Kapcsolat tesztelése';

  @override
  String get save => 'Mentés';

  @override
  String get serverUpdated => 'Szerver frissítve';

  @override
  String get serverAdded => 'Szerver hozzáadva';

  @override
  String get notConnectedToServer => 'Nincs csatlakozva a szerverhez';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Csatlakozás...';

  @override
  String get retry => 'Újrapróbálás';

  @override
  String get disconnected => 'Lecsatlakozva';

  @override
  String get connectAction => 'Csatlakozás';

  @override
  String get connected => 'Csatlakozva';

  @override
  String get connectingTooltip => 'Csatlakozás';

  @override
  String get connectionError => 'Csatlakozási hiba';

  @override
  String get startChatting => 'Csevegés indítása';

  @override
  String get chatHint => 'Írj egy üzenetet a csevegéshez';

  @override
  String get suggestionHello => 'Szia';

  @override
  String get suggestionWriteCode => 'Segíts kódot írni';

  @override
  String get suggestionSummarize => 'Foglald össze ezt a cikket';

  @override
  String get addressLabel => 'Cím';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Engedélyezve';

  @override
  String get tlsDisabled => 'Letiltva';

  @override
  String get switchServer => 'Szerver váltása';

  @override
  String get clearChatHistory => 'Csevegési előzmények törlése';

  @override
  String get serverSettings => 'Szerver beállítások';

  @override
  String get defaultBadge => 'Alapértelmezett';

  @override
  String get addressCopied => 'Cím másolva';

  @override
  String get copyAddress => 'Cím másolása';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get justNow => 'Most';

  @override
  String minutesAgo(int minutes) {
    return '$minutes perce';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours órája';
  }

  @override
  String daysAgo(int days) {
    return '$days napja';
  }

  @override
  String get inputMessageHint => 'Írj egy üzenetet...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Nem lehet csatlakozni a szerverhez: $address\nEllenőrizd:\n• A szervercím és a port helyes\n• Az eszköz ugyanazon a hálózaton van, mint a szerver\n• A szerver fut\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'A csatlakozás időtúllépése: $address\nEllenőrizd:\n• A szervercím helyes\n• Nincs tűzfal-korlátozás\n• Az eszköz hálózata működik';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Hálózatellenőrzés sikertelen: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket kézfogás időtúllépés, a szerver nem válaszolt a frissítési kérésre';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket csatlakozási hiba: $error';
  }

  @override
  String get errorServerClosedConnection => 'A szerver bontotta a kapcsolatot';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'A szerver bontotta a kapcsolatot$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway protokoll kézfogás időtúllépés\nWebSocket csatlakozva, de a szerver nem fejezte be a hitelesítést.\nEllenőrizd:\n• Az Auth Token helyes\n• A szerver Gateway verziója kompatibilis';

  @override
  String get errorWebSocketTimeout => 'WebSocket csatlakozás időtúllépés';

  @override
  String get errorConnectionRefused =>
      'Csatlakozás elutasítva\nLehet, hogy a szerveren nem fut Gateway szolgáltatás';

  @override
  String get errorNetworkUnreachable =>
      'Hálózat elérhetetlen\nEllenőrizd az eszköz hálózati kapcsolatát';

  @override
  String get errorConnectionReset =>
      'Kapcsolat visszaállítva\nLehet, hogy a szerver nem támogatja a WebSocket kapcsolatokat';

  @override
  String get errorTlsCertificate =>
      'TLS tanúsítványhiba\nLAN kapcsolatoknál próbáld kikapcsolni a titkosított kapcsolatot (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Csatlakozás sikertelen: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Hitelesítés sikertelen: $error';
  }
}
