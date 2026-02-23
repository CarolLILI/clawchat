// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class SIt extends S {
  SIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Esporta configurazione';

  @override
  String get importConfig => 'Importa configurazione';

  @override
  String get noServers => 'Nessun server';

  @override
  String get addServerHint =>
      'Aggiungi un server OpenClaw per iniziare a chattare con l\'IA';

  @override
  String get addServer => 'Aggiungi server';

  @override
  String serverCount(int count) {
    return 'Server ($count)';
  }

  @override
  String get confirmDelete => 'Conferma eliminazione';

  @override
  String confirmDeleteMessage(String name) {
    return 'Sei sicuro di voler eliminare \"$name\"?';
  }

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get serverDeleted => 'Server eliminato';

  @override
  String get configBackupSubject => 'Backup configurazione ClawChat';

  @override
  String get configExported => 'Configurazione esportata';

  @override
  String exportFailed(String error) {
    return 'Esportazione fallita: $error';
  }

  @override
  String get cannotReadFile => 'Impossibile leggere il file';

  @override
  String get importConfigTitle => 'Importa configurazione';

  @override
  String get importConfigMessage =>
      'La configurazione importata verrà unita all\'elenco dei server esistente. Continuare?';

  @override
  String get importAction => 'Importa';

  @override
  String get configImported => 'Configurazione importata con successo';

  @override
  String importFailed(String error) {
    return 'Importazione fallita: $error';
  }

  @override
  String get editServer => 'Modifica server';

  @override
  String get basicInfo => 'Informazioni di base';

  @override
  String get nameLabel => 'Nome';

  @override
  String get nameHint => 'es. Il mio server cloud';

  @override
  String get pleaseEnterName => 'Inserisci un nome';

  @override
  String get connectionAddress => 'Indirizzo di connessione';

  @override
  String get serverAddress => 'Indirizzo del server';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Inserisci un indirizzo';

  @override
  String get portLabel => 'Porta';

  @override
  String get pleaseEnterPort => 'Inserisci una porta';

  @override
  String get invalidPort => 'Numero di porta non valido';

  @override
  String get encryptedConnection => 'Connessione crittografata (WSS)';

  @override
  String get cloudServerRecommended => 'Consigliato per i server cloud';

  @override
  String get authMethod => 'Autenticazione';

  @override
  String get passwordLabel => 'Password';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Inserisci la password del Gateway';

  @override
  String get pleaseEnterPassword => 'Inserisci una password';

  @override
  String get passwordHelp =>
      'La password si trova in gateway.auth.password nel file ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Ottieni dalla configurazione OpenClaw';

  @override
  String get pleaseEnterToken => 'Inserisci un token';

  @override
  String get tokenHelp =>
      'Il token si trova in gateway.auth.token nel file ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Connessione riuscita';

  @override
  String get connectionFailed => 'Connessione fallita';

  @override
  String get testConnection => 'Testa connessione';

  @override
  String get save => 'Salva';

  @override
  String get serverUpdated => 'Server aggiornato';

  @override
  String get serverAdded => 'Server aggiunto';

  @override
  String get notConnectedToServer => 'Non connesso al server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Connessione in corso...';

  @override
  String get retry => 'Riprova';

  @override
  String get disconnected => 'Disconnesso';

  @override
  String get connectAction => 'Connetti';

  @override
  String get connected => 'Connesso';

  @override
  String get connectingTooltip => 'Connessione in corso';

  @override
  String get connectionError => 'Errore di connessione';

  @override
  String get startChatting => 'Inizia a chattare';

  @override
  String get chatHint => 'Scrivi un messaggio per chattare';

  @override
  String get suggestionHello => 'Ciao';

  @override
  String get suggestionWriteCode => 'Aiutami a scrivere codice';

  @override
  String get suggestionSummarize => 'Riassumi questo articolo';

  @override
  String get addressLabel => 'Indirizzo';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Abilitato';

  @override
  String get tlsDisabled => 'Disabilitato';

  @override
  String get switchServer => 'Cambia server';

  @override
  String get clearChatHistory => 'Cancella cronologia chat';

  @override
  String get serverSettings => 'Impostazioni server';

  @override
  String get defaultBadge => 'Predefinito';

  @override
  String get addressCopied => 'Indirizzo copiato';

  @override
  String get copyAddress => 'Copia indirizzo';

  @override
  String get edit => 'Modifica';

  @override
  String get justNow => 'Adesso';

  @override
  String minutesAgo(int minutes) {
    return '$minutes min fa';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours ore fa';
  }

  @override
  String daysAgo(int days) {
    return '$days giorni fa';
  }

  @override
  String get inputMessageHint => 'Scrivi un messaggio...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Impossibile connettersi al server $address\nVerifica che:\n• L\'indirizzo e la porta del server siano corretti\n• Il dispositivo sia sulla stessa rete del server\n• Il server sia in esecuzione\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Connessione a $address scaduta\nVerifica che:\n• L\'indirizzo del server sia corretto\n• Non ci siano restrizioni del firewall\n• La rete del dispositivo funzioni';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Controllo di rete fallito: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Timeout dell\'handshake WebSocket, il server non ha risposto alla richiesta di upgrade';

  @override
  String errorWebSocketError(String error) {
    return 'Errore di connessione WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection =>
      'Il server ha chiuso la connessione';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Il server ha chiuso la connessione$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Timeout dell\'handshake del protocollo Gateway\nWebSocket connesso, ma il server non ha completato l\'autenticazione.\nVerifica che:\n• L\'Auth Token sia corretto\n• La versione del Gateway del server sia compatibile';

  @override
  String get errorWebSocketTimeout => 'Timeout della connessione WebSocket';

  @override
  String get errorConnectionRefused =>
      'Connessione rifiutata\nIl server potrebbe non avere il servizio Gateway in esecuzione';

  @override
  String get errorNetworkUnreachable =>
      'Rete non raggiungibile\nVerifica la connessione di rete del dispositivo';

  @override
  String get errorConnectionReset =>
      'Connessione reimpostata\nIl server potrebbe non supportare le connessioni WebSocket';

  @override
  String get errorTlsCertificate =>
      'Errore del certificato TLS\nPer le connessioni LAN, prova a disabilitare la connessione crittografata (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Connessione fallita: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Autenticazione fallita: $error';
  }
}
