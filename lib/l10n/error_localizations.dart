import 'app_localizations.dart';

import '../services/gateway_client.dart';

String localizeGatewayError(
  S l10n,
  GatewayErrorType type,
  Map<String, String> params,
) {
  switch (type) {
    case GatewayErrorType.cannotConnect:
      return l10n.errorCannotConnect(
        params['address'] ?? '',
        params['detail'] ?? '',
      );
    case GatewayErrorType.connectionTimeout:
      return l10n.errorConnectionTimeout(params['address'] ?? '');
    case GatewayErrorType.networkCheckFailed:
      return l10n.errorNetworkCheckFailed(params['error'] ?? '');
    case GatewayErrorType.webSocketHandshakeTimeout:
      return l10n.errorWebSocketHandshakeTimeout;
    case GatewayErrorType.webSocketError:
      return l10n.errorWebSocketError(params['error'] ?? '');
    case GatewayErrorType.serverClosedConnection:
      final detail = params['detail'] ?? '';
      if (detail.isEmpty) return l10n.errorServerClosedConnection;
      return l10n.errorServerClosedConnectionWithDetail(detail);
    case GatewayErrorType.gatewayHandshakeTimeout:
      return l10n.errorGatewayHandshakeTimeout;
    case GatewayErrorType.webSocketTimeout:
      return l10n.errorWebSocketTimeout;
    case GatewayErrorType.connectionRefused:
      return l10n.errorConnectionRefused;
    case GatewayErrorType.networkUnreachable:
      return l10n.errorNetworkUnreachable;
    case GatewayErrorType.connectionReset:
      return l10n.errorConnectionReset;
    case GatewayErrorType.tlsCertificate:
      return l10n.errorTlsCertificate;
    case GatewayErrorType.genericConnection:
      return l10n.errorGenericConnection(params['error'] ?? '');
    case GatewayErrorType.authFailed:
      return l10n.errorAuthFailed(params['error'] ?? '');
  }
}
