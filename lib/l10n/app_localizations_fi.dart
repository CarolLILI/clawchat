// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class SFi extends S {
  SFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Vie asetukset';

  @override
  String get importConfig => 'Tuo asetukset';

  @override
  String get noServers => 'Ei palvelimia vielä';

  @override
  String get addServerHint =>
      'Lisää OpenClaw-palvelin aloittaaksesi keskustelun tekoälyn kanssa';

  @override
  String get addServer => 'Lisää palvelin';

  @override
  String serverCount(int count) {
    return 'Palvelimet ($count)';
  }

  @override
  String get confirmDelete => 'Vahvista poisto';

  @override
  String confirmDeleteMessage(String name) {
    return 'Haluatko varmasti poistaa palvelimen \"$name\"?';
  }

  @override
  String get cancel => 'Peruuta';

  @override
  String get delete => 'Poista';

  @override
  String get serverDeleted => 'Palvelin poistettu';

  @override
  String get configBackupSubject => 'ClawChat asetusten varmuuskopio';

  @override
  String get configExported => 'Asetukset viety';

  @override
  String exportFailed(String error) {
    return 'Vienti epäonnistui: $error';
  }

  @override
  String get cannotReadFile => 'Tiedostoa ei voi lukea';

  @override
  String get importConfigTitle => 'Tuo asetukset';

  @override
  String get importConfigMessage =>
      'Tuodut asetukset yhdistetään nykyiseen palvelinluetteloon. Jatketaanko?';

  @override
  String get importAction => 'Tuo';

  @override
  String get configImported => 'Asetukset tuotu onnistuneesti';

  @override
  String importFailed(String error) {
    return 'Tuonti epäonnistui: $error';
  }

  @override
  String get editServer => 'Muokkaa palvelinta';

  @override
  String get basicInfo => 'Perustiedot';

  @override
  String get nameLabel => 'Nimi';

  @override
  String get nameHint => 'esim. Oma pilvipalvelin';

  @override
  String get pleaseEnterName => 'Anna nimi';

  @override
  String get connectionAddress => 'Yhteysosoite';

  @override
  String get serverAddress => 'Palvelimen osoite';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Anna osoite';

  @override
  String get portLabel => 'Portti';

  @override
  String get pleaseEnterPort => 'Anna portti';

  @override
  String get invalidPort => 'Virheellinen porttinumero';

  @override
  String get encryptedConnection => 'Salattu yhteys (WSS)';

  @override
  String get cloudServerRecommended => 'Suositellaan pilvipalvelimille';

  @override
  String get authMethod => 'Todennus';

  @override
  String get passwordLabel => 'Salasana';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Anna Gateway-salasana';

  @override
  String get pleaseEnterPassword => 'Anna salasana';

  @override
  String get passwordHelp =>
      'Salasana löytyy kohdasta gateway.auth.password tiedostossa ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Hae OpenClaw-asetuksista';

  @override
  String get pleaseEnterToken => 'Anna token';

  @override
  String get tokenHelp =>
      'Token löytyy kohdasta gateway.auth.token tiedostossa ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Yhteys onnistui';

  @override
  String get connectionFailed => 'Yhteys epäonnistui';

  @override
  String get testConnection => 'Testaa yhteys';

  @override
  String get save => 'Tallenna';

  @override
  String get serverUpdated => 'Palvelin päivitetty';

  @override
  String get serverAdded => 'Palvelin lisätty';

  @override
  String get notConnectedToServer => 'Ei yhteyttä palvelimeen';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Yhdistetään...';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get disconnected => 'Yhteys katkaistu';

  @override
  String get connectAction => 'Yhdistä';

  @override
  String get connected => 'Yhdistetty';

  @override
  String get connectingTooltip => 'Yhdistetään';

  @override
  String get connectionError => 'Yhteysvirhe';

  @override
  String get startChatting => 'Aloita keskustelu';

  @override
  String get chatHint => 'Kirjoita viesti keskustellaksesi';

  @override
  String get suggestionHello => 'Hei';

  @override
  String get suggestionWriteCode => 'Auta minua kirjoittamaan koodia';

  @override
  String get suggestionSummarize => 'Tiivistä tämä artikkeli';

  @override
  String get addressLabel => 'Osoite';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Käytössä';

  @override
  String get tlsDisabled => 'Pois käytöstä';

  @override
  String get switchServer => 'Vaihda palvelinta';

  @override
  String get clearChatHistory => 'Tyhjennä keskusteluhistoria';

  @override
  String get serverSettings => 'Palvelimen asetukset';

  @override
  String get defaultBadge => 'Oletus';

  @override
  String get addressCopied => 'Osoite kopioitu';

  @override
  String get copyAddress => 'Kopioi osoite';

  @override
  String get edit => 'Muokkaa';

  @override
  String get justNow => 'Juuri nyt';

  @override
  String minutesAgo(int minutes) {
    return '$minutes min sitten';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours t sitten';
  }

  @override
  String daysAgo(int days) {
    return '$days pv sitten';
  }

  @override
  String get inputMessageHint => 'Kirjoita viesti...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Palvelimeen $address ei saada yhteyttä\nTarkista:\n• Palvelimen osoite ja portti ovat oikein\n• Laite on samassa verkossa palvelimen kanssa\n• Palvelin on käynnissä\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Yhteys osoitteeseen $address aikakatkaistiin\nTarkista:\n• Palvelimen osoite on oikein\n• Ei palomuurirajoituksia\n• Laitteen verkko toimii';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Verkon tarkistus epäonnistui: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket-kättely aikakatkaistiin, palvelin ei vastannut päivityspyyntöön';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket-yhteysvirhe: $error';
  }

  @override
  String get errorServerClosedConnection => 'Palvelin sulki yhteyden';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Palvelin sulki yhteyden$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway-protokollan kättely aikakatkaistiin\nWebSocket yhdistetty, mutta palvelin ei suorittanut todennusta loppuun.\nTarkista:\n• Auth Token on oikein\n• Palvelimen Gateway-versio on yhteensopiva';

  @override
  String get errorWebSocketTimeout => 'WebSocket-yhteys aikakatkaistiin';

  @override
  String get errorConnectionRefused =>
      'Yhteys evätty\nPalvelin ei ehkä käytä Gateway-palvelua';

  @override
  String get errorNetworkUnreachable =>
      'Verkkoa ei tavoiteta\nTarkista laitteen verkkoyhteys';

  @override
  String get errorConnectionReset =>
      'Yhteys nollattiin\nPalvelin ei ehkä tue WebSocket-yhteyksiä';

  @override
  String get errorTlsCertificate =>
      'TLS-sertifikaattivirhe\nLähiverkkoyhteyksille kokeile salaamattoman yhteyden (WSS) poistamista käytöstä';

  @override
  String errorGenericConnection(String error) {
    return 'Yhteys epäonnistui: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Todennus epäonnistui: $error';
  }
}
