// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class SEl extends S {
  SEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Εξαγωγή ρυθμίσεων';

  @override
  String get importConfig => 'Εισαγωγή ρυθμίσεων';

  @override
  String get noServers => 'Δεν υπάρχουν διακομιστές';

  @override
  String get addServerHint =>
      'Προσθέστε έναν διακομιστή OpenClaw για να ξεκινήσετε τη συνομιλία με AI';

  @override
  String get addServer => 'Προσθήκη διακομιστή';

  @override
  String serverCount(int count) {
    return 'Διακομιστές ($count)';
  }

  @override
  String get confirmDelete => 'Επιβεβαίωση διαγραφής';

  @override
  String confirmDeleteMessage(String name) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε τον \"$name\";';
  }

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get serverDeleted => 'Ο διακομιστής διαγράφηκε';

  @override
  String get configBackupSubject => 'Αντίγραφο ασφαλείας ρυθμίσεων ClawChat';

  @override
  String get configExported => 'Οι ρυθμίσεις εξήχθησαν';

  @override
  String exportFailed(String error) {
    return 'Η εξαγωγή απέτυχε: $error';
  }

  @override
  String get cannotReadFile => 'Δεν είναι δυνατή η ανάγνωση του αρχείου';

  @override
  String get importConfigTitle => 'Εισαγωγή ρυθμίσεων';

  @override
  String get importConfigMessage =>
      'Οι εισαγόμενες ρυθμίσεις θα συγχωνευθούν με την υπάρχουσα λίστα διακομιστών. Συνέχεια;';

  @override
  String get importAction => 'Εισαγωγή';

  @override
  String get configImported => 'Οι ρυθμίσεις εισήχθησαν επιτυχώς';

  @override
  String importFailed(String error) {
    return 'Η εισαγωγή απέτυχε: $error';
  }

  @override
  String get editServer => 'Επεξεργασία διακομιστή';

  @override
  String get basicInfo => 'Βασικές πληροφορίες';

  @override
  String get nameLabel => 'Όνομα';

  @override
  String get nameHint => 'π.χ. Ο cloud διακομιστής μου';

  @override
  String get pleaseEnterName => 'Εισαγάγετε ένα όνομα';

  @override
  String get connectionAddress => 'Διεύθυνση σύνδεσης';

  @override
  String get serverAddress => 'Διεύθυνση διακομιστή';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Εισαγάγετε μια διεύθυνση';

  @override
  String get portLabel => 'Θύρα';

  @override
  String get pleaseEnterPort => 'Εισαγάγετε μια θύρα';

  @override
  String get invalidPort => 'Μη έγκυρος αριθμός θύρας';

  @override
  String get encryptedConnection => 'Κρυπτογραφημένη σύνδεση (WSS)';

  @override
  String get cloudServerRecommended => 'Συνιστάται για cloud διακομιστές';

  @override
  String get authMethod => 'Πιστοποίηση';

  @override
  String get passwordLabel => 'Κωδικός πρόσβασης';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Εισαγάγετε τον κωδικό Gateway';

  @override
  String get pleaseEnterPassword => 'Εισαγάγετε έναν κωδικό πρόσβασης';

  @override
  String get passwordHelp =>
      'Ο κωδικός βρίσκεται στο gateway.auth.password στο ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Λήψη από τις ρυθμίσεις OpenClaw';

  @override
  String get pleaseEnterToken => 'Εισαγάγετε ένα token';

  @override
  String get tokenHelp =>
      'Το token βρίσκεται στο gateway.auth.token στο ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Επιτυχής σύνδεση';

  @override
  String get connectionFailed => 'Η σύνδεση απέτυχε';

  @override
  String get testConnection => 'Δοκιμή σύνδεσης';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get serverUpdated => 'Ο διακομιστής ενημερώθηκε';

  @override
  String get serverAdded => 'Ο διακομιστής προστέθηκε';

  @override
  String get notConnectedToServer => 'Δεν υπάρχει σύνδεση με τον διακομιστή';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Σύνδεση...';

  @override
  String get retry => 'Επανάληψη';

  @override
  String get disconnected => 'Αποσυνδεδεμένο';

  @override
  String get connectAction => 'Σύνδεση';

  @override
  String get connected => 'Συνδεδεμένο';

  @override
  String get connectingTooltip => 'Σύνδεση';

  @override
  String get connectionError => 'Σφάλμα σύνδεσης';

  @override
  String get startChatting => 'Ξεκινήστε τη συνομιλία';

  @override
  String get chatHint => 'Πληκτρολογήστε ένα μήνυμα για συνομιλία';

  @override
  String get suggestionHello => 'Γεια σας';

  @override
  String get suggestionWriteCode => 'Βοηθήστε με να γράψω κώδικα';

  @override
  String get suggestionSummarize => 'Συνοψίστε αυτό το άρθρο';

  @override
  String get addressLabel => 'Διεύθυνση';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Ενεργοποιημένο';

  @override
  String get tlsDisabled => 'Απενεργοποιημένο';

  @override
  String get switchServer => 'Αλλαγή διακομιστή';

  @override
  String get clearChatHistory => 'Εκκαθάριση ιστορικού συνομιλίας';

  @override
  String get serverSettings => 'Ρυθμίσεις διακομιστή';

  @override
  String get defaultBadge => 'Προεπιλογή';

  @override
  String get addressCopied => 'Η διεύθυνση αντιγράφηκε';

  @override
  String get copyAddress => 'Αντιγραφή διεύθυνσης';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get justNow => 'Μόλις τώρα';

  @override
  String minutesAgo(int minutes) {
    return '$minutesλ πριν';
  }

  @override
  String hoursAgo(int hours) {
    return '$hoursω πριν';
  }

  @override
  String daysAgo(int days) {
    return '$daysμ πριν';
  }

  @override
  String get inputMessageHint => 'Πληκτρολογήστε ένα μήνυμα...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Δεν είναι δυνατή η σύνδεση στον διακομιστή $address\nΕλέγξτε:\n• Η διεύθυνση και η θύρα του διακομιστή είναι σωστές\n• Η συσκευή βρίσκεται στο ίδιο δίκτυο με τον διακομιστή\n• Ο διακομιστής εκτελείται\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Η σύνδεση στο $address έληξε\nΕλέγξτε:\n• Η διεύθυνση του διακομιστή είναι σωστή\n• Δεν υπάρχουν περιορισμοί τείχους προστασίας\n• Το δίκτυο της συσκευής λειτουργεί';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Ο έλεγχος δικτύου απέτυχε: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Η χειραψία WebSocket έληξε, ο διακομιστής δεν απάντησε στο αίτημα αναβάθμισης';

  @override
  String errorWebSocketError(String error) {
    return 'Σφάλμα σύνδεσης WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Ο διακομιστής έκλεισε τη σύνδεση';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Ο διακομιστής έκλεισε τη σύνδεση$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Η χειραψία πρωτοκόλλου Gateway έληξε\nΤο WebSocket συνδέθηκε, αλλά ο διακομιστής δεν ολοκλήρωσε την πιστοποίηση.\nΕλέγξτε:\n• Το Auth Token είναι σωστό\n• Η έκδοση Gateway του διακομιστή είναι συμβατή';

  @override
  String get errorWebSocketTimeout => 'Η σύνδεση WebSocket έληξε';

  @override
  String get errorConnectionRefused =>
      'Η σύνδεση απορρίφθηκε\nΟ διακομιστής ενδέχεται να μην εκτελεί την υπηρεσία Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Το δίκτυο δεν είναι προσβάσιμο\nΕλέγξτε τη σύνδεση δικτύου της συσκευής';

  @override
  String get errorConnectionReset =>
      'Η σύνδεση επαναφέρθηκε\nΟ διακομιστής ενδέχεται να μην υποστηρίζει συνδέσεις WebSocket';

  @override
  String get errorTlsCertificate =>
      'Σφάλμα πιστοποιητικού TLS\nΓια συνδέσεις LAN, δοκιμάστε να απενεργοποιήσετε την κρυπτογραφημένη σύνδεση (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Η σύνδεση απέτυχε: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Η πιστοποίηση απέτυχε: $error';
  }
}
