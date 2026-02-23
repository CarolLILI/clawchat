// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class SFr extends S {
  SFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Exporter la configuration';

  @override
  String get importConfig => 'Importer la configuration';

  @override
  String get noServers => 'Aucun serveur';

  @override
  String get addServerHint =>
      'Ajoutez un serveur OpenClaw pour commencer à discuter avec l\'IA';

  @override
  String get addServer => 'Ajouter un serveur';

  @override
  String serverCount(int count) {
    return 'Serveurs ($count)';
  }

  @override
  String get confirmDelete => 'Confirmer la suppression';

  @override
  String confirmDeleteMessage(String name) {
    return 'Êtes-vous sûr de vouloir supprimer « $name » ?';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get serverDeleted => 'Serveur supprimé';

  @override
  String get configBackupSubject => 'Sauvegarde de la configuration ClawChat';

  @override
  String get configExported => 'Configuration exportée';

  @override
  String exportFailed(String error) {
    return 'Échec de l\'exportation : $error';
  }

  @override
  String get cannotReadFile => 'Impossible de lire le fichier';

  @override
  String get importConfigTitle => 'Importer la configuration';

  @override
  String get importConfigMessage =>
      'La configuration importée sera fusionnée avec la liste de serveurs existante. Continuer ?';

  @override
  String get importAction => 'Importer';

  @override
  String get configImported => 'Configuration importée avec succès';

  @override
  String importFailed(String error) {
    return 'Échec de l\'importation : $error';
  }

  @override
  String get editServer => 'Modifier le serveur';

  @override
  String get basicInfo => 'Informations de base';

  @override
  String get nameLabel => 'Nom';

  @override
  String get nameHint => 'ex. Mon serveur cloud';

  @override
  String get pleaseEnterName => 'Veuillez entrer un nom';

  @override
  String get connectionAddress => 'Adresse de connexion';

  @override
  String get serverAddress => 'Adresse du serveur';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Veuillez entrer une adresse';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Veuillez entrer un port';

  @override
  String get invalidPort => 'Numéro de port invalide';

  @override
  String get encryptedConnection => 'Connexion chiffrée (WSS)';

  @override
  String get cloudServerRecommended => 'Recommandé pour les serveurs cloud';

  @override
  String get authMethod => 'Authentification';

  @override
  String get passwordLabel => 'Mot de passe';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Entrez le mot de passe Gateway';

  @override
  String get pleaseEnterPassword => 'Veuillez entrer un mot de passe';

  @override
  String get passwordHelp =>
      'Le mot de passe se trouve dans gateway.auth.password dans ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Obtenir depuis la configuration OpenClaw';

  @override
  String get pleaseEnterToken => 'Veuillez entrer un Token';

  @override
  String get tokenHelp =>
      'Le Token se trouve dans gateway.auth.token dans ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Connexion réussie';

  @override
  String get connectionFailed => 'Échec de la connexion';

  @override
  String get testConnection => 'Tester la connexion';

  @override
  String get save => 'Enregistrer';

  @override
  String get serverUpdated => 'Serveur mis à jour';

  @override
  String get serverAdded => 'Serveur ajouté';

  @override
  String get notConnectedToServer => 'Non connecté au serveur';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Connexion en cours...';

  @override
  String get retry => 'Réessayer';

  @override
  String get disconnected => 'Déconnecté';

  @override
  String get connectAction => 'Se connecter';

  @override
  String get connected => 'Connecté';

  @override
  String get connectingTooltip => 'Connexion en cours';

  @override
  String get connectionError => 'Erreur de connexion';

  @override
  String get startChatting => 'Commencer à discuter';

  @override
  String get chatHint => 'Tapez un message pour discuter';

  @override
  String get suggestionHello => 'Bonjour';

  @override
  String get suggestionWriteCode => 'Aide-moi à écrire du code';

  @override
  String get suggestionSummarize => 'Résume cet article';

  @override
  String get addressLabel => 'Adresse';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Activé';

  @override
  String get tlsDisabled => 'Désactivé';

  @override
  String get switchServer => 'Changer de serveur';

  @override
  String get clearChatHistory => 'Effacer l\'historique du chat';

  @override
  String get serverSettings => 'Paramètres du serveur';

  @override
  String get defaultBadge => 'Par défaut';

  @override
  String get addressCopied => 'Adresse copiée';

  @override
  String get copyAddress => 'Copier l\'adresse';

  @override
  String get edit => 'Modifier';

  @override
  String get justNow => 'À l\'instant';

  @override
  String minutesAgo(int minutes) {
    return 'il y a $minutes min';
  }

  @override
  String hoursAgo(int hours) {
    return 'il y a $hours h';
  }

  @override
  String daysAgo(int days) {
    return 'il y a $days j';
  }

  @override
  String get inputMessageHint => 'Tapez un message...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Impossible de se connecter au serveur $address\nVeuillez vérifier :\n• L\'adresse et le port du serveur sont corrects\n• L\'appareil est sur le même réseau que le serveur\n• Le serveur est en cours d\'exécution\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Délai de connexion à $address dépassé\nVeuillez vérifier :\n• L\'adresse du serveur est correcte\n• Aucune restriction de pare-feu\n• Le réseau de l\'appareil fonctionne';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Échec de la vérification réseau : $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Délai de négociation WebSocket dépassé, le serveur n\'a pas répondu à la demande de mise à niveau';

  @override
  String errorWebSocketError(String error) {
    return 'Erreur de connexion WebSocket : $error';
  }

  @override
  String get errorServerClosedConnection => 'Le serveur a fermé la connexion';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Le serveur a fermé la connexion$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Délai de négociation du protocole Gateway dépassé\nWebSocket connecté, mais le serveur n\'a pas terminé l\'authentification.\nVeuillez vérifier :\n• Le Auth Token est correct\n• La version du Gateway du serveur est compatible';

  @override
  String get errorWebSocketTimeout => 'Délai de connexion WebSocket dépassé';

  @override
  String get errorConnectionRefused =>
      'Connexion refusée\nLe serveur n\'exécute peut-être pas le service Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Réseau inaccessible\nVeuillez vérifier la connexion réseau de l\'appareil';

  @override
  String get errorConnectionReset =>
      'Connexion réinitialisée\nLe serveur ne prend peut-être pas en charge les connexions WebSocket';

  @override
  String get errorTlsCertificate =>
      'Erreur de certificat TLS\nPour les connexions LAN, essayez de désactiver la connexion chiffrée (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Échec de la connexion : $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Échec de l\'authentification : $error';
  }
}
