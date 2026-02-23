// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Export Config';

  @override
  String get importConfig => 'Import Config';

  @override
  String get noServers => 'No Servers Yet';

  @override
  String get addServerHint =>
      'Add an OpenClaw server to start chatting with AI';

  @override
  String get addServer => 'Add Server';

  @override
  String serverCount(int count) {
    return 'Servers ($count)';
  }

  @override
  String get confirmDelete => 'Confirm Delete';

  @override
  String confirmDeleteMessage(String name) {
    return 'Are you sure you want to delete \"$name\"?';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get serverDeleted => 'Server deleted';

  @override
  String get configBackupSubject => 'ClawChat Config Backup';

  @override
  String get configExported => 'Config exported';

  @override
  String exportFailed(String error) {
    return 'Export failed: $error';
  }

  @override
  String get cannotReadFile => 'Cannot read file';

  @override
  String get importConfigTitle => 'Import Config';

  @override
  String get importConfigMessage =>
      'Imported config will be merged with the existing server list. Continue?';

  @override
  String get importAction => 'Import';

  @override
  String get configImported => 'Config imported successfully';

  @override
  String importFailed(String error) {
    return 'Import failed: $error';
  }

  @override
  String get editServer => 'Edit Server';

  @override
  String get basicInfo => 'Basic Info';

  @override
  String get nameLabel => 'Name';

  @override
  String get nameHint => 'e.g. My Cloud Server';

  @override
  String get pleaseEnterName => 'Please enter a name';

  @override
  String get connectionAddress => 'Connection Address';

  @override
  String get serverAddress => 'Server Address';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Please enter an address';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Please enter a port';

  @override
  String get invalidPort => 'Invalid port number';

  @override
  String get encryptedConnection => 'Encrypted Connection (WSS)';

  @override
  String get cloudServerRecommended => 'Recommended for cloud servers';

  @override
  String get authMethod => 'Authentication';

  @override
  String get passwordLabel => 'Password';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Enter Gateway password';

  @override
  String get pleaseEnterPassword => 'Please enter a password';

  @override
  String get passwordHelp =>
      'Password is at gateway.auth.password in ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Get from OpenClaw config';

  @override
  String get pleaseEnterToken => 'Please enter a token';

  @override
  String get tokenHelp =>
      'Token is at gateway.auth.token in ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Connection Successful';

  @override
  String get connectionFailed => 'Connection Failed';

  @override
  String get testConnection => 'Test Connection';

  @override
  String get save => 'Save';

  @override
  String get serverUpdated => 'Server updated';

  @override
  String get serverAdded => 'Server added';

  @override
  String get notConnectedToServer => 'Not connected to server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Connecting...';

  @override
  String get retry => 'Retry';

  @override
  String get disconnected => 'Disconnected';

  @override
  String get connectAction => 'Connect';

  @override
  String get connected => 'Connected';

  @override
  String get connectingTooltip => 'Connecting';

  @override
  String get connectionError => 'Connection Error';

  @override
  String get startChatting => 'Start Chatting';

  @override
  String get chatHint => 'Type a message to chat';

  @override
  String get suggestionHello => 'Hello';

  @override
  String get suggestionWriteCode => 'Help me write code';

  @override
  String get suggestionSummarize => 'Summarize this article';

  @override
  String get addressLabel => 'Address';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Enabled';

  @override
  String get tlsDisabled => 'Disabled';

  @override
  String get switchServer => 'Switch Server';

  @override
  String get clearChatHistory => 'Clear Chat History';

  @override
  String get serverSettings => 'Server Settings';

  @override
  String get defaultBadge => 'Default';

  @override
  String get addressCopied => 'Address copied';

  @override
  String get copyAddress => 'Copy Address';

  @override
  String get edit => 'Edit';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int minutes) {
    return '${minutes}m ago';
  }

  @override
  String hoursAgo(int hours) {
    return '${hours}h ago';
  }

  @override
  String daysAgo(int days) {
    return '${days}d ago';
  }

  @override
  String get inputMessageHint => 'Type a message...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Cannot connect to server $address\nPlease check:\n• Server address and port are correct\n• Device is on the same network as the server\n• Server is running\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Connection to $address timed out\nPlease check:\n• Server address is correct\n• No firewall restrictions\n• Device network is working';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Network check failed: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket handshake timed out, server did not respond to upgrade request';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket connection error: $error';
  }

  @override
  String get errorServerClosedConnection => 'Server closed the connection';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Server closed the connection$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway protocol handshake timed out\nWebSocket connected, but server did not complete authentication.\nPlease check:\n• Auth Token is correct\n• Server Gateway version is compatible';

  @override
  String get errorWebSocketTimeout => 'WebSocket connection timed out';

  @override
  String get errorConnectionRefused =>
      'Connection refused\nServer may not be running Gateway service';

  @override
  String get errorNetworkUnreachable =>
      'Network unreachable\nPlease check device network connection';

  @override
  String get errorConnectionReset =>
      'Connection reset\nServer may not support WebSocket connections';

  @override
  String get errorTlsCertificate =>
      'TLS certificate error\nFor LAN connections, try disabling encrypted connection (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Connection failed: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Authentication failed: $error';
  }
}
