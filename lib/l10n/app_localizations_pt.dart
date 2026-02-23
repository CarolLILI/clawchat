// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class SPt extends S {
  SPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Exportar configuração';

  @override
  String get importConfig => 'Importar configuração';

  @override
  String get noServers => 'Nenhum servidor';

  @override
  String get addServerHint =>
      'Adicione um servidor OpenClaw para começar a conversar com a IA';

  @override
  String get addServer => 'Adicionar servidor';

  @override
  String serverCount(int count) {
    return 'Servidores ($count)';
  }

  @override
  String get confirmDelete => 'Confirmar exclusão';

  @override
  String confirmDeleteMessage(String name) {
    return 'Tem certeza de que deseja excluir \"$name\"?';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get serverDeleted => 'Servidor excluído';

  @override
  String get configBackupSubject => 'Backup de configuração ClawChat';

  @override
  String get configExported => 'Configuração exportada';

  @override
  String exportFailed(String error) {
    return 'Falha na exportação: $error';
  }

  @override
  String get cannotReadFile => 'Não é possível ler o arquivo';

  @override
  String get importConfigTitle => 'Importar configuração';

  @override
  String get importConfigMessage =>
      'A configuração importada será mesclada com a lista de servidores existente. Continuar?';

  @override
  String get importAction => 'Importar';

  @override
  String get configImported => 'Configuração importada com sucesso';

  @override
  String importFailed(String error) {
    return 'Falha na importação: $error';
  }

  @override
  String get editServer => 'Editar servidor';

  @override
  String get basicInfo => 'Informações básicas';

  @override
  String get nameLabel => 'Nome';

  @override
  String get nameHint => 'ex. Meu servidor na nuvem';

  @override
  String get pleaseEnterName => 'Insira um nome';

  @override
  String get connectionAddress => 'Endereço de conexão';

  @override
  String get serverAddress => 'Endereço do servidor';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Insira um endereço';

  @override
  String get portLabel => 'Porta';

  @override
  String get pleaseEnterPort => 'Insira uma porta';

  @override
  String get invalidPort => 'Número de porta inválido';

  @override
  String get encryptedConnection => 'Conexão criptografada (WSS)';

  @override
  String get cloudServerRecommended => 'Recomendado para servidores na nuvem';

  @override
  String get authMethod => 'Autenticação';

  @override
  String get passwordLabel => 'Senha';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Insira a senha do Gateway';

  @override
  String get pleaseEnterPassword => 'Insira uma senha';

  @override
  String get passwordHelp =>
      'A senha está em gateway.auth.password no arquivo ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Obter da configuração OpenClaw';

  @override
  String get pleaseEnterToken => 'Insira um token';

  @override
  String get tokenHelp =>
      'O token está em gateway.auth.token no arquivo ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Conexão bem-sucedida';

  @override
  String get connectionFailed => 'Falha na conexão';

  @override
  String get testConnection => 'Testar conexão';

  @override
  String get save => 'Salvar';

  @override
  String get serverUpdated => 'Servidor atualizado';

  @override
  String get serverAdded => 'Servidor adicionado';

  @override
  String get notConnectedToServer => 'Não conectado ao servidor';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Conectando...';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get disconnected => 'Desconectado';

  @override
  String get connectAction => 'Conectar';

  @override
  String get connected => 'Conectado';

  @override
  String get connectingTooltip => 'Conectando';

  @override
  String get connectionError => 'Erro de conexão';

  @override
  String get startChatting => 'Começar a conversar';

  @override
  String get chatHint => 'Digite uma mensagem para conversar';

  @override
  String get suggestionHello => 'Olá';

  @override
  String get suggestionWriteCode => 'Me ajude a escrever código';

  @override
  String get suggestionSummarize => 'Resuma este artigo';

  @override
  String get addressLabel => 'Endereço';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Ativado';

  @override
  String get tlsDisabled => 'Desativado';

  @override
  String get switchServer => 'Trocar servidor';

  @override
  String get clearChatHistory => 'Limpar histórico do chat';

  @override
  String get serverSettings => 'Configurações do servidor';

  @override
  String get defaultBadge => 'Padrão';

  @override
  String get addressCopied => 'Endereço copiado';

  @override
  String get copyAddress => 'Copiar endereço';

  @override
  String get edit => 'Editar';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String minutesAgo(int minutes) {
    return '$minutes min atrás';
  }

  @override
  String hoursAgo(int hours) {
    return '${hours}h atrás';
  }

  @override
  String daysAgo(int days) {
    return '${days}d atrás';
  }

  @override
  String get inputMessageHint => 'Digite uma mensagem...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Não é possível conectar ao servidor $address\nVerifique:\n• O endereço e a porta do servidor estão corretos\n• O dispositivo está na mesma rede que o servidor\n• O servidor está em execução\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'A conexão com $address expirou\nVerifique:\n• O endereço do servidor está correto\n• Não há restrições de firewall\n• A rede do dispositivo está funcionando';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Falha na verificação de rede: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'Tempo esgotado no handshake WebSocket, o servidor não respondeu à solicitação de upgrade';

  @override
  String errorWebSocketError(String error) {
    return 'Erro na conexão WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'O servidor encerrou a conexão';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'O servidor encerrou a conexão$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Tempo esgotado no handshake do protocolo Gateway\nWebSocket conectado, mas o servidor não completou a autenticação.\nVerifique:\n• O Auth Token está correto\n• A versão do Gateway do servidor é compatível';

  @override
  String get errorWebSocketTimeout => 'Tempo esgotado na conexão WebSocket';

  @override
  String get errorConnectionRefused =>
      'Conexão recusada\nO servidor pode não estar executando o serviço Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Rede inacessível\nVerifique a conexão de rede do dispositivo';

  @override
  String get errorConnectionReset =>
      'Conexão redefinida\nO servidor pode não suportar conexões WebSocket';

  @override
  String get errorTlsCertificate =>
      'Erro no certificado TLS\nPara conexões LAN, tente desativar a conexão criptografada (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Falha na conexão: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Falha na autenticação: $error';
  }
}
