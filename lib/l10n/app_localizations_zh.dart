// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class SZh extends S {
  SZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => '导出配置';

  @override
  String get importConfig => '导入配置';

  @override
  String get noServers => '还没有服务器';

  @override
  String get addServerHint => '添加 OpenClaw 服务器，开始与 AI 对话';

  @override
  String get addServer => '添加服务器';

  @override
  String serverCount(int count) {
    return '服务器 ($count)';
  }

  @override
  String get confirmDelete => '确认删除';

  @override
  String confirmDeleteMessage(String name) {
    return '确定要删除 \"$name\" 吗？';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get serverDeleted => '服务器已删除';

  @override
  String get configBackupSubject => 'ClawChat 配置备份';

  @override
  String get configExported => '配置已导出';

  @override
  String exportFailed(String error) {
    return '导出失败: $error';
  }

  @override
  String get cannotReadFile => '无法读取文件';

  @override
  String get importConfigTitle => '导入配置';

  @override
  String get importConfigMessage => '导入配置将合并到现有服务器列表中，是否继续？';

  @override
  String get importAction => '导入';

  @override
  String get configImported => '配置导入成功';

  @override
  String importFailed(String error) {
    return '导入失败: $error';
  }

  @override
  String get editServer => '编辑服务器';

  @override
  String get basicInfo => '基本信息';

  @override
  String get nameLabel => '名称';

  @override
  String get nameHint => '例如：腾讯云服务器';

  @override
  String get pleaseEnterName => '请输入名称';

  @override
  String get connectionAddress => '连接地址';

  @override
  String get serverAddress => '服务器地址';

  @override
  String get addressHint => '192.168.1.100 或 example.com';

  @override
  String get pleaseEnterAddress => '请输入地址';

  @override
  String get portLabel => '端口';

  @override
  String get pleaseEnterPort => '请输入端口';

  @override
  String get invalidPort => '无效端口号';

  @override
  String get encryptedConnection => '加密连接 (WSS)';

  @override
  String get cloudServerRecommended => '云服务器建议开启';

  @override
  String get authMethod => '认证方式';

  @override
  String get passwordLabel => '密码';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => '输入 Gateway 密码';

  @override
  String get pleaseEnterPassword => '请输入密码';

  @override
  String get passwordHelp =>
      '密码位于服务器 ~/.openclaw/openclaw.json 的 gateway.auth.password';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => '从 OpenClaw 配置中获取';

  @override
  String get pleaseEnterToken => '请输入 Token';

  @override
  String get tokenHelp =>
      'Token 位于 ~/.openclaw/openclaw.json 的 gateway.auth.token';

  @override
  String get connectionSuccess => '连接成功';

  @override
  String get connectionFailed => '连接失败';

  @override
  String get testConnection => '测试连接';

  @override
  String get save => '保存';

  @override
  String get serverUpdated => '服务器已更新';

  @override
  String get serverAdded => '服务器已添加';

  @override
  String get notConnectedToServer => '未连接到服务器';

  @override
  String get chatTitle => '小虾';

  @override
  String get connectingStatus => '连接中...';

  @override
  String get retry => '重试';

  @override
  String get disconnected => '未连接';

  @override
  String get connectAction => '连接';

  @override
  String get connected => '已连接';

  @override
  String get connectingTooltip => '连接中';

  @override
  String get connectionError => '连接错误';

  @override
  String get startChatting => '开始聊天吧';

  @override
  String get chatHint => '输入消息与小虾对话';

  @override
  String get suggestionHello => '你好';

  @override
  String get suggestionWriteCode => '帮我写代码';

  @override
  String get suggestionSummarize => '总结这篇文章';

  @override
  String get addressLabel => '地址';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => '已启用';

  @override
  String get tlsDisabled => '未启用';

  @override
  String get switchServer => '切换服务器';

  @override
  String get clearChatHistory => '清空聊天记录';

  @override
  String get serverSettings => '服务器设置';

  @override
  String get defaultBadge => '默认';

  @override
  String get addressCopied => '地址已复制';

  @override
  String get copyAddress => '复制地址';

  @override
  String get edit => '编辑';

  @override
  String get justNow => '刚刚';

  @override
  String minutesAgo(int minutes) {
    return '$minutes分钟前';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours小时前';
  }

  @override
  String daysAgo(int days) {
    return '$days天前';
  }

  @override
  String get inputMessageHint => '输入消息...';

  @override
  String errorCannotConnect(String address, String detail) {
    return '无法连接到服务器 $address\n请检查：\n• 服务器地址和端口是否正确\n• 设备是否与服务器在同一网络\n• 服务器是否已启动\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '连接服务器超时 $address\n请检查：\n• 服务器地址是否正确\n• 是否存在防火墙限制\n• 设备网络是否正常';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return '网络检查失败: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket 握手超时，服务器未响应 WebSocket 升级请求';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket 连接错误: $error';
  }

  @override
  String get errorServerClosedConnection => '服务器关闭了连接';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return '服务器关闭了连接$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway 协议握手超时\nWebSocket 已连接，但服务器未完成认证握手。\n请检查：\n• Auth Token 是否正确\n• 服务器 Gateway 版本是否兼容';

  @override
  String get errorWebSocketTimeout => 'WebSocket 连接超时';

  @override
  String get errorConnectionRefused => '连接被拒绝\n服务器可能未运行 Gateway 服务';

  @override
  String get errorNetworkUnreachable => '网络不可达\n请检查设备网络连接';

  @override
  String get errorConnectionReset => '连接被重置\n服务器可能不支持 WebSocket 连接';

  @override
  String get errorTlsCertificate => 'TLS 证书错误\n如果是局域网连接，请关闭加密连接 (WSS)';

  @override
  String errorGenericConnection(String error) {
    return '连接失败: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return '认证失败: $error';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class SZhTw extends SZh {
  SZhTw() : super('zh_TW');

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => '匯出設定';

  @override
  String get importConfig => '匯入設定';

  @override
  String get noServers => '尚無伺服器';

  @override
  String get addServerHint => '新增 OpenClaw 伺服器，開始與 AI 對話';

  @override
  String get addServer => '新增伺服器';

  @override
  String serverCount(int count) {
    return '伺服器 ($count)';
  }

  @override
  String get confirmDelete => '確認刪除';

  @override
  String confirmDeleteMessage(String name) {
    return '確定要刪除「$name」嗎？';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get serverDeleted => '伺服器已刪除';

  @override
  String get configBackupSubject => 'ClawChat 設定備份';

  @override
  String get configExported => '設定已匯出';

  @override
  String exportFailed(String error) {
    return '匯出失敗：$error';
  }

  @override
  String get cannotReadFile => '無法讀取檔案';

  @override
  String get importConfigTitle => '匯入設定';

  @override
  String get importConfigMessage => '匯入的設定將合併至現有伺服器清單，是否繼續？';

  @override
  String get importAction => '匯入';

  @override
  String get configImported => '設定匯入成功';

  @override
  String importFailed(String error) {
    return '匯入失敗：$error';
  }

  @override
  String get editServer => '編輯伺服器';

  @override
  String get basicInfo => '基本資訊';

  @override
  String get nameLabel => '名稱';

  @override
  String get nameHint => '例如：我的雲端伺服器';

  @override
  String get pleaseEnterName => '請輸入名稱';

  @override
  String get connectionAddress => '連線位址';

  @override
  String get serverAddress => '伺服器位址';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => '請輸入位址';

  @override
  String get portLabel => '連接埠';

  @override
  String get pleaseEnterPort => '請輸入連接埠';

  @override
  String get invalidPort => '無效的連接埠號';

  @override
  String get encryptedConnection => '加密連線 (WSS)';

  @override
  String get cloudServerRecommended => '建議雲端伺服器啟用';

  @override
  String get authMethod => '驗證方式';

  @override
  String get passwordLabel => '密碼';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => '輸入 Gateway 密碼';

  @override
  String get pleaseEnterPassword => '請輸入密碼';

  @override
  String get passwordHelp =>
      '密碼位於伺服器 ~/.openclaw/openclaw.json 的 gateway.auth.password';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => '從 OpenClaw 設定中取得';

  @override
  String get pleaseEnterToken => '請輸入 Token';

  @override
  String get tokenHelp =>
      'Token 位於 ~/.openclaw/openclaw.json 的 gateway.auth.token';

  @override
  String get connectionSuccess => '連線成功';

  @override
  String get connectionFailed => '連線失敗';

  @override
  String get testConnection => '測試連線';

  @override
  String get save => '儲存';

  @override
  String get serverUpdated => '伺服器已更新';

  @override
  String get serverAdded => '伺服器已新增';

  @override
  String get notConnectedToServer => '未連線至伺服器';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => '連線中...';

  @override
  String get retry => '重試';

  @override
  String get disconnected => '未連線';

  @override
  String get connectAction => '連線';

  @override
  String get connected => '已連線';

  @override
  String get connectingTooltip => '連線中';

  @override
  String get connectionError => '連線錯誤';

  @override
  String get startChatting => '開始聊天吧';

  @override
  String get chatHint => '輸入訊息開始對話';

  @override
  String get suggestionHello => '你好';

  @override
  String get suggestionWriteCode => '幫我寫程式碼';

  @override
  String get suggestionSummarize => '摘要這篇文章';

  @override
  String get addressLabel => '位址';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => '已啟用';

  @override
  String get tlsDisabled => '未啟用';

  @override
  String get switchServer => '切換伺服器';

  @override
  String get clearChatHistory => '清除聊天記錄';

  @override
  String get serverSettings => '伺服器設定';

  @override
  String get defaultBadge => '預設';

  @override
  String get addressCopied => '位址已複製';

  @override
  String get copyAddress => '複製位址';

  @override
  String get edit => '編輯';

  @override
  String get justNow => '剛剛';

  @override
  String minutesAgo(int minutes) {
    return '$minutes 分鐘前';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours 小時前';
  }

  @override
  String daysAgo(int days) {
    return '$days 天前';
  }

  @override
  String get inputMessageHint => '輸入訊息...';

  @override
  String errorCannotConnect(String address, String detail) {
    return '無法連線至伺服器 $address\n請檢查：\n• 伺服器位址與連接埠是否正確\n• 裝置是否與伺服器在同一網路\n• 伺服器是否已啟動\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '連線至 $address 逾時\n請檢查：\n• 伺服器位址是否正確\n• 是否有防火牆限制\n• 裝置網路是否正常';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return '網路檢查失敗：$error';
  }

  @override
  String get errorWebSocketHandshakeTimeout => 'WebSocket 交握逾時，伺服器未回應升級請求';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket 連線錯誤：$error';
  }

  @override
  String get errorServerClosedConnection => '伺服器已關閉連線';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return '伺服器已關閉連線$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway 協定交握逾時\nWebSocket 已連線，但伺服器未完成驗證交握。\n請檢查：\n• Auth Token 是否正確\n• 伺服器 Gateway 版本是否相容';

  @override
  String get errorWebSocketTimeout => 'WebSocket 連線逾時';

  @override
  String get errorConnectionRefused => '連線被拒絕\n伺服器可能未執行 Gateway 服務';

  @override
  String get errorNetworkUnreachable => '網路無法連線\n請檢查裝置網路連線';

  @override
  String get errorConnectionReset => '連線被重設\n伺服器可能不支援 WebSocket 連線';

  @override
  String get errorTlsCertificate => 'TLS 憑證錯誤\n若為區域網路連線，請關閉加密連線 (WSS)';

  @override
  String errorGenericConnection(String error) {
    return '連線失敗：$error';
  }

  @override
  String errorAuthFailed(String error) {
    return '驗證失敗：$error';
  }
}
