// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class SJa extends S {
  SJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => '設定をエクスポート';

  @override
  String get importConfig => '設定をインポート';

  @override
  String get noServers => 'サーバーがありません';

  @override
  String get addServerHint => 'OpenClaw サーバーを追加して AI とチャットを始めましょう';

  @override
  String get addServer => 'サーバーを追加';

  @override
  String serverCount(int count) {
    return 'サーバー ($count)';
  }

  @override
  String get confirmDelete => '削除の確認';

  @override
  String confirmDeleteMessage(String name) {
    return '「$name」を削除してもよろしいですか？';
  }

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get serverDeleted => 'サーバーを削除しました';

  @override
  String get configBackupSubject => 'ClawChat 設定バックアップ';

  @override
  String get configExported => '設定をエクスポートしました';

  @override
  String exportFailed(String error) {
    return 'エクスポートに失敗しました: $error';
  }

  @override
  String get cannotReadFile => 'ファイルを読み取れません';

  @override
  String get importConfigTitle => '設定をインポート';

  @override
  String get importConfigMessage => 'インポートした設定は既存のサーバーリストに統合されます。続行しますか？';

  @override
  String get importAction => 'インポート';

  @override
  String get configImported => '設定のインポートに成功しました';

  @override
  String importFailed(String error) {
    return 'インポートに失敗しました: $error';
  }

  @override
  String get editServer => 'サーバーを編集';

  @override
  String get basicInfo => '基本情報';

  @override
  String get nameLabel => '名前';

  @override
  String get nameHint => '例：自宅サーバー';

  @override
  String get pleaseEnterName => '名前を入力してください';

  @override
  String get connectionAddress => '接続先アドレス';

  @override
  String get serverAddress => 'サーバーアドレス';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'アドレスを入力してください';

  @override
  String get portLabel => 'ポート';

  @override
  String get pleaseEnterPort => 'ポートを入力してください';

  @override
  String get invalidPort => '無効なポート番号です';

  @override
  String get encryptedConnection => '暗号化接続 (WSS)';

  @override
  String get cloudServerRecommended => 'クラウドサーバーでは有効化を推奨';

  @override
  String get authMethod => '認証方法';

  @override
  String get passwordLabel => 'パスワード';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Gateway パスワードを入力';

  @override
  String get pleaseEnterPassword => 'パスワードを入力してください';

  @override
  String get passwordHelp =>
      'パスワードは ~/.openclaw/openclaw.json の gateway.auth.password にあります';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'OpenClaw 設定から取得';

  @override
  String get pleaseEnterToken => 'Token を入力してください';

  @override
  String get tokenHelp =>
      'Token は ~/.openclaw/openclaw.json の gateway.auth.token にあります';

  @override
  String get connectionSuccess => '接続に成功しました';

  @override
  String get connectionFailed => '接続に失敗しました';

  @override
  String get testConnection => '接続テスト';

  @override
  String get save => '保存';

  @override
  String get serverUpdated => 'サーバーを更新しました';

  @override
  String get serverAdded => 'サーバーを追加しました';

  @override
  String get notConnectedToServer => 'サーバーに未接続';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => '接続中...';

  @override
  String get retry => '再試行';

  @override
  String get disconnected => '未接続';

  @override
  String get connectAction => '接続';

  @override
  String get connected => '接続済み';

  @override
  String get connectingTooltip => '接続中';

  @override
  String get connectionError => '接続エラー';

  @override
  String get startChatting => 'チャットを始めましょう';

  @override
  String get chatHint => 'メッセージを入力してチャット';

  @override
  String get suggestionHello => 'こんにちは';

  @override
  String get suggestionWriteCode => 'コードを書いて';

  @override
  String get suggestionSummarize => 'この記事を要約して';

  @override
  String get addressLabel => 'アドレス';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => '有効';

  @override
  String get tlsDisabled => '無効';

  @override
  String get switchServer => 'サーバーを切替';

  @override
  String get clearChatHistory => 'チャット履歴を削除';

  @override
  String get serverSettings => 'サーバー設定';

  @override
  String get defaultBadge => 'デフォルト';

  @override
  String get addressCopied => 'アドレスをコピーしました';

  @override
  String get copyAddress => 'アドレスをコピー';

  @override
  String get edit => '編集';

  @override
  String get justNow => 'たった今';

  @override
  String minutesAgo(int minutes) {
    return '$minutes分前';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours時間前';
  }

  @override
  String daysAgo(int days) {
    return '$days日前';
  }

  @override
  String get inputMessageHint => 'メッセージを入力...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'サーバー $address に接続できません\n以下をご確認ください：\n• サーバーアドレスとポートが正しいか\n• デバイスがサーバーと同じネットワーク上にあるか\n• サーバーが起動しているか\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '$address への接続がタイムアウトしました\n以下をご確認ください：\n• サーバーアドレスが正しいか\n• ファイアウォールの制限がないか\n• デバイスのネットワークが正常か';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'ネットワークチェックに失敗しました: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket ハンドシェイクがタイムアウトしました。サーバーがアップグレードリクエストに応答しませんでした';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket 接続エラー: $error';
  }

  @override
  String get errorServerClosedConnection => 'サーバーが接続を切断しました';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'サーバーが接続を切断しました$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway プロトコルのハンドシェイクがタイムアウトしました\nWebSocket は接続されましたが、サーバーが認証ハンドシェイクを完了しませんでした。\n以下をご確認ください：\n• Auth Token が正しいか\n• サーバーの Gateway バージョンに互換性があるか';

  @override
  String get errorWebSocketTimeout => 'WebSocket 接続がタイムアウトしました';

  @override
  String get errorConnectionRefused =>
      '接続が拒否されました\nサーバーで Gateway サービスが実行されていない可能性があります';

  @override
  String get errorNetworkUnreachable => 'ネットワークに到達できません\nデバイスのネットワーク接続をご確認ください';

  @override
  String get errorConnectionReset =>
      '接続がリセットされました\nサーバーが WebSocket 接続をサポートしていない可能性があります';

  @override
  String get errorTlsCertificate =>
      'TLS 証明書エラー\nLAN 接続の場合は、暗号化接続 (WSS) を無効にしてください';

  @override
  String errorGenericConnection(String error) {
    return '接続に失敗しました: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return '認証に失敗しました: $error';
  }
}
