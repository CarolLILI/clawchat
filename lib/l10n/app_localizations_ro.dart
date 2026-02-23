// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class SRo extends S {
  SRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Exportă configurația';

  @override
  String get importConfig => 'Importă configurația';

  @override
  String get noServers => 'Niciun server';

  @override
  String get addServerHint =>
      'Adaugă un server OpenClaw pentru a începe să conversezi cu AI';

  @override
  String get addServer => 'Adaugă server';

  @override
  String serverCount(int count) {
    return 'Servere ($count)';
  }

  @override
  String get confirmDelete => 'Confirmă ștergerea';

  @override
  String confirmDeleteMessage(String name) {
    return 'Sigur doriți să ștergeți \"$name\"?';
  }

  @override
  String get cancel => 'Anulează';

  @override
  String get delete => 'Șterge';

  @override
  String get serverDeleted => 'Server șters';

  @override
  String get configBackupSubject => 'Backup configurație ClawChat';

  @override
  String get configExported => 'Configurație exportată';

  @override
  String exportFailed(String error) {
    return 'Exportul a eșuat: $error';
  }

  @override
  String get cannotReadFile => 'Nu se poate citi fișierul';

  @override
  String get importConfigTitle => 'Importă configurația';

  @override
  String get importConfigMessage =>
      'Configurația importată va fi combinată cu lista de servere existentă. Continuați?';

  @override
  String get importAction => 'Importă';

  @override
  String get configImported => 'Configurație importată cu succes';

  @override
  String importFailed(String error) {
    return 'Importul a eșuat: $error';
  }

  @override
  String get editServer => 'Editează server';

  @override
  String get basicInfo => 'Informații de bază';

  @override
  String get nameLabel => 'Nume';

  @override
  String get nameHint => 'ex. Serverul meu cloud';

  @override
  String get pleaseEnterName => 'Introduceți un nume';

  @override
  String get connectionAddress => 'Adresa de conectare';

  @override
  String get serverAddress => 'Adresa serverului';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Introduceți o adresă';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Introduceți un port';

  @override
  String get invalidPort => 'Număr de port invalid';

  @override
  String get encryptedConnection => 'Conexiune criptată (WSS)';

  @override
  String get cloudServerRecommended => 'Recomandat pentru serverele cloud';

  @override
  String get authMethod => 'Autentificare';

  @override
  String get passwordLabel => 'Parolă';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Introduceți parola Gateway';

  @override
  String get pleaseEnterPassword => 'Introduceți o parolă';

  @override
  String get passwordHelp =>
      'Parola se află la gateway.auth.password în ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Obține din configurația OpenClaw';

  @override
  String get pleaseEnterToken => 'Introduceți un token';

  @override
  String get tokenHelp =>
      'Token-ul se află la gateway.auth.token în ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Conexiune reușită';

  @override
  String get connectionFailed => 'Conexiune eșuată';

  @override
  String get testConnection => 'Testează conexiunea';

  @override
  String get save => 'Salvează';

  @override
  String get serverUpdated => 'Server actualizat';

  @override
  String get serverAdded => 'Server adăugat';

  @override
  String get notConnectedToServer => 'Neconectat la server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Se conectează...';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get disconnected => 'Deconectat';

  @override
  String get connectAction => 'Conectare';

  @override
  String get connected => 'Conectat';

  @override
  String get connectingTooltip => 'Se conectează';

  @override
  String get connectionError => 'Eroare de conexiune';

  @override
  String get startChatting => 'Începe conversația';

  @override
  String get chatHint => 'Scrie un mesaj pentru a conversa';

  @override
  String get suggestionHello => 'Salut';

  @override
  String get suggestionWriteCode => 'Ajută-mă să scriu cod';

  @override
  String get suggestionSummarize => 'Rezumă acest articol';

  @override
  String get addressLabel => 'Adresă';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Activat';

  @override
  String get tlsDisabled => 'Dezactivat';

  @override
  String get switchServer => 'Schimbă serverul';

  @override
  String get clearChatHistory => 'Șterge istoricul conversației';

  @override
  String get serverSettings => 'Setări server';

  @override
  String get defaultBadge => 'Implicit';

  @override
  String get addressCopied => 'Adresă copiată';

  @override
  String get copyAddress => 'Copiază adresa';

  @override
  String get edit => 'Editează';

  @override
  String get justNow => 'Chiar acum';

  @override
  String minutesAgo(int minutes) {
    return 'acum $minutes min';
  }

  @override
  String hoursAgo(int hours) {
    return 'acum $hours ore';
  }

  @override
  String daysAgo(int days) {
    return 'acum $days zile';
  }

  @override
  String get inputMessageHint => 'Scrie un mesaj...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Nu se poate conecta la serverul $address\nVerificați:\n• Adresa și portul serverului sunt corecte\n• Dispozitivul este în aceeași rețea ca serverul\n• Serverul este pornit\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Conexiunea la $address a expirat\nVerificați:\n• Adresa serverului este corectă\n• Nu există restricții de firewall\n• Rețeaua dispozitivului funcționează';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Verificarea rețelei a eșuat: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Timp expirat la handshake WebSocket, serverul nu a răspuns la cererea de upgrade';

  @override
  String errorWebSocketError(String error) {
    return 'Eroare conexiune WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Serverul a închis conexiunea';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Serverul a închis conexiunea$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Timp expirat la handshake-ul protocolului Gateway\nWebSocket conectat, dar serverul nu a finalizat autentificarea.\nVerificați:\n• Auth Token este corect\n• Versiunea Gateway a serverului este compatibilă';

  @override
  String get errorWebSocketTimeout => 'Timp expirat la conexiunea WebSocket';

  @override
  String get errorConnectionRefused =>
      'Conexiune refuzată\nServerul poate să nu aibă serviciul Gateway pornit';

  @override
  String get errorNetworkUnreachable =>
      'Rețea inaccesibilă\nVerificați conexiunea de rețea a dispozitivului';

  @override
  String get errorConnectionReset =>
      'Conexiune resetată\nServerul poate să nu suporte conexiuni WebSocket';

  @override
  String get errorTlsCertificate =>
      'Eroare certificat TLS\nPentru conexiuni LAN, încercați dezactivarea conexiunii criptate (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Conexiune eșuată: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Autentificare eșuată: $error';
  }
}
