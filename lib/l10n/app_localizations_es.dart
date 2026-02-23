// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class SEs extends S {
  SEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Exportar configuración';

  @override
  String get importConfig => 'Importar configuración';

  @override
  String get noServers => 'Sin servidores aún';

  @override
  String get addServerHint =>
      'Agrega un servidor OpenClaw para empezar a chatear con IA';

  @override
  String get addServer => 'Agregar servidor';

  @override
  String serverCount(int count) {
    return 'Servidores ($count)';
  }

  @override
  String get confirmDelete => 'Confirmar eliminación';

  @override
  String confirmDeleteMessage(String name) {
    return '¿Estás seguro de que deseas eliminar \"$name\"?';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get serverDeleted => 'Servidor eliminado';

  @override
  String get configBackupSubject => 'Respaldo de configuración de ClawChat';

  @override
  String get configExported => 'Configuración exportada';

  @override
  String exportFailed(String error) {
    return 'Error al exportar: $error';
  }

  @override
  String get cannotReadFile => 'No se puede leer el archivo';

  @override
  String get importConfigTitle => 'Importar configuración';

  @override
  String get importConfigMessage =>
      'La configuración importada se fusionará con la lista de servidores existente. ¿Continuar?';

  @override
  String get importAction => 'Importar';

  @override
  String get configImported => 'Configuración importada exitosamente';

  @override
  String importFailed(String error) {
    return 'Error al importar: $error';
  }

  @override
  String get editServer => 'Editar servidor';

  @override
  String get basicInfo => 'Información básica';

  @override
  String get nameLabel => 'Nombre';

  @override
  String get nameHint => 'ej. Mi servidor en la nube';

  @override
  String get pleaseEnterName => 'Por favor ingresa un nombre';

  @override
  String get connectionAddress => 'Dirección de conexión';

  @override
  String get serverAddress => 'Dirección del servidor';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Por favor ingresa una dirección';

  @override
  String get portLabel => 'Puerto';

  @override
  String get pleaseEnterPort => 'Por favor ingresa un puerto';

  @override
  String get invalidPort => 'Número de puerto inválido';

  @override
  String get encryptedConnection => 'Conexión cifrada (WSS)';

  @override
  String get cloudServerRecommended => 'Recomendado para servidores en la nube';

  @override
  String get authMethod => 'Autenticación';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Ingresa la contraseña de Gateway';

  @override
  String get pleaseEnterPassword => 'Por favor ingresa una contraseña';

  @override
  String get passwordHelp =>
      'La contraseña está en gateway.auth.password en ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Obtener de la configuración de OpenClaw';

  @override
  String get pleaseEnterToken => 'Por favor ingresa un Token';

  @override
  String get tokenHelp =>
      'El Token está en gateway.auth.token en ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Conexión exitosa';

  @override
  String get connectionFailed => 'Error de conexión';

  @override
  String get testConnection => 'Probar conexión';

  @override
  String get save => 'Guardar';

  @override
  String get serverUpdated => 'Servidor actualizado';

  @override
  String get serverAdded => 'Servidor agregado';

  @override
  String get notConnectedToServer => 'No conectado al servidor';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Conectando...';

  @override
  String get retry => 'Reintentar';

  @override
  String get disconnected => 'Desconectado';

  @override
  String get connectAction => 'Conectar';

  @override
  String get connected => 'Conectado';

  @override
  String get connectingTooltip => 'Conectando';

  @override
  String get connectionError => 'Error de conexión';

  @override
  String get startChatting => 'Empezar a chatear';

  @override
  String get chatHint => 'Escribe un mensaje para chatear';

  @override
  String get suggestionHello => 'Hola';

  @override
  String get suggestionWriteCode => 'Ayúdame a escribir código';

  @override
  String get suggestionSummarize => 'Resume este artículo';

  @override
  String get addressLabel => 'Dirección';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Activado';

  @override
  String get tlsDisabled => 'Desactivado';

  @override
  String get switchServer => 'Cambiar servidor';

  @override
  String get clearChatHistory => 'Borrar historial del chat';

  @override
  String get serverSettings => 'Ajustes del servidor';

  @override
  String get defaultBadge => 'Predeterminado';

  @override
  String get addressCopied => 'Dirección copiada';

  @override
  String get copyAddress => 'Copiar dirección';

  @override
  String get edit => 'Editar';

  @override
  String get justNow => 'Ahora mismo';

  @override
  String minutesAgo(int minutes) {
    return 'hace $minutes min';
  }

  @override
  String hoursAgo(int hours) {
    return 'hace $hours h';
  }

  @override
  String daysAgo(int days) {
    return 'hace $days días';
  }

  @override
  String get inputMessageHint => 'Escribe un mensaje...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'No se puede conectar al servidor $address\nPor favor verifica:\n• La dirección y el puerto del servidor son correctos\n• El dispositivo está en la misma red que el servidor\n• El servidor está en ejecución\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Se agotó el tiempo de conexión a $address\nPor favor verifica:\n• La dirección del servidor es correcta\n• No hay restricciones de firewall\n• La red del dispositivo funciona';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Verificación de red fallida: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Se agotó el tiempo de negociación WebSocket, el servidor no respondió a la solicitud de actualización';

  @override
  String errorWebSocketError(String error) {
    return 'Error de conexión WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'El servidor cerró la conexión';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'El servidor cerró la conexión$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Se agotó el tiempo de negociación del protocolo Gateway\nWebSocket conectado, pero el servidor no completó la autenticación.\nPor favor verifica:\n• El Auth Token es correcto\n• La versión del Gateway del servidor es compatible';

  @override
  String get errorWebSocketTimeout =>
      'Se agotó el tiempo de conexión WebSocket';

  @override
  String get errorConnectionRefused =>
      'Conexión rechazada\nEl servidor puede no estar ejecutando el servicio Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Red inaccesible\nPor favor verifica la conexión de red del dispositivo';

  @override
  String get errorConnectionReset =>
      'Conexión reiniciada\nEl servidor puede no soportar conexiones WebSocket';

  @override
  String get errorTlsCertificate =>
      'Error de certificado TLS\nPara conexiones LAN, intenta desactivar la conexión cifrada (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Error de conexión: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Error de autenticación: $error';
  }
}
