// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class SVi extends S {
  SVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Xuất cấu hình';

  @override
  String get importConfig => 'Nhập cấu hình';

  @override
  String get noServers => 'Chưa có máy chủ nào';

  @override
  String get addServerHint =>
      'Thêm máy chủ OpenClaw để bắt đầu trò chuyện với AI';

  @override
  String get addServer => 'Thêm máy chủ';

  @override
  String serverCount(int count) {
    return 'Máy chủ ($count)';
  }

  @override
  String get confirmDelete => 'Xác nhận xóa';

  @override
  String confirmDeleteMessage(String name) {
    return 'Bạn có chắc chắn muốn xóa \"$name\" không?';
  }

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get serverDeleted => 'Đã xóa máy chủ';

  @override
  String get configBackupSubject => 'Sao lưu cấu hình ClawChat';

  @override
  String get configExported => 'Đã xuất cấu hình';

  @override
  String exportFailed(String error) {
    return 'Xuất thất bại: $error';
  }

  @override
  String get cannotReadFile => 'Không thể đọc tệp';

  @override
  String get importConfigTitle => 'Nhập cấu hình';

  @override
  String get importConfigMessage =>
      'Cấu hình nhập vào sẽ được gộp với danh sách máy chủ hiện có. Bạn có muốn tiếp tục không?';

  @override
  String get importAction => 'Nhập';

  @override
  String get configImported => 'Nhập cấu hình thành công';

  @override
  String importFailed(String error) {
    return 'Nhập thất bại: $error';
  }

  @override
  String get editServer => 'Chỉnh sửa máy chủ';

  @override
  String get basicInfo => 'Thông tin cơ bản';

  @override
  String get nameLabel => 'Tên';

  @override
  String get nameHint => 'Ví dụ: Máy chủ đám mây của tôi';

  @override
  String get pleaseEnterName => 'Vui lòng nhập tên';

  @override
  String get connectionAddress => 'Địa chỉ kết nối';

  @override
  String get serverAddress => 'Địa chỉ máy chủ';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Vui lòng nhập địa chỉ';

  @override
  String get portLabel => 'Cổng';

  @override
  String get pleaseEnterPort => 'Vui lòng nhập cổng';

  @override
  String get invalidPort => 'Số cổng không hợp lệ';

  @override
  String get encryptedConnection => 'Kết nối mã hóa (WSS)';

  @override
  String get cloudServerRecommended => 'Khuyến nghị cho máy chủ đám mây';

  @override
  String get authMethod => 'Phương thức xác thực';

  @override
  String get passwordLabel => 'Mật khẩu';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Nhập mật khẩu Gateway';

  @override
  String get pleaseEnterPassword => 'Vui lòng nhập mật khẩu';

  @override
  String get passwordHelp =>
      'Mật khẩu nằm tại gateway.auth.password trong ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Lấy từ cấu hình OpenClaw';

  @override
  String get pleaseEnterToken => 'Vui lòng nhập Token';

  @override
  String get tokenHelp =>
      'Token nằm tại gateway.auth.token trong ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Kết nối thành công';

  @override
  String get connectionFailed => 'Kết nối thất bại';

  @override
  String get testConnection => 'Kiểm tra kết nối';

  @override
  String get save => 'Lưu';

  @override
  String get serverUpdated => 'Đã cập nhật máy chủ';

  @override
  String get serverAdded => 'Đã thêm máy chủ';

  @override
  String get notConnectedToServer => 'Chưa kết nối đến máy chủ';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Đang kết nối...';

  @override
  String get retry => 'Thử lại';

  @override
  String get disconnected => 'Chưa kết nối';

  @override
  String get connectAction => 'Kết nối';

  @override
  String get connected => 'Đã kết nối';

  @override
  String get connectingTooltip => 'Đang kết nối';

  @override
  String get connectionError => 'Lỗi kết nối';

  @override
  String get startChatting => 'Bắt đầu trò chuyện';

  @override
  String get chatHint => 'Nhập tin nhắn để trò chuyện';

  @override
  String get suggestionHello => 'Xin chào';

  @override
  String get suggestionWriteCode => 'Giúp tôi viết mã';

  @override
  String get suggestionSummarize => 'Tóm tắt bài viết này';

  @override
  String get addressLabel => 'Địa chỉ';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Đã bật';

  @override
  String get tlsDisabled => 'Đã tắt';

  @override
  String get switchServer => 'Chuyển máy chủ';

  @override
  String get clearChatHistory => 'Xóa lịch sử trò chuyện';

  @override
  String get serverSettings => 'Cài đặt máy chủ';

  @override
  String get defaultBadge => 'Mặc định';

  @override
  String get addressCopied => 'Đã sao chép địa chỉ';

  @override
  String get copyAddress => 'Sao chép địa chỉ';

  @override
  String get edit => 'Chỉnh sửa';

  @override
  String get justNow => 'Vừa xong';

  @override
  String minutesAgo(int minutes) {
    return '$minutes phút trước';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours giờ trước';
  }

  @override
  String daysAgo(int days) {
    return '$days ngày trước';
  }

  @override
  String get inputMessageHint => 'Nhập tin nhắn...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Không thể kết nối đến máy chủ $address\nVui lòng kiểm tra:\n• Địa chỉ và cổng máy chủ có đúng không\n• Thiết bị có cùng mạng với máy chủ không\n• Máy chủ có đang chạy không\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Kết nối đến $address đã hết thời gian\nVui lòng kiểm tra:\n• Địa chỉ máy chủ có đúng không\n• Có bị tường lửa chặn không\n• Mạng của thiết bị có hoạt động bình thường không';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Kiểm tra mạng thất bại: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket bắt tay hết thời gian, máy chủ không phản hồi yêu cầu nâng cấp';

  @override
  String errorWebSocketError(String error) {
    return 'Lỗi kết nối WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Máy chủ đã đóng kết nối';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Máy chủ đã đóng kết nối$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway bắt tay giao thức hết thời gian\nWebSocket đã kết nối, nhưng máy chủ không hoàn tất xác thực.\nVui lòng kiểm tra:\n• Auth Token có đúng không\n• Phiên bản Gateway của máy chủ có tương thích không';

  @override
  String get errorWebSocketTimeout => 'Kết nối WebSocket đã hết thời gian';

  @override
  String get errorConnectionRefused =>
      'Kết nối bị từ chối\nMáy chủ có thể không đang chạy dịch vụ Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Không thể truy cập mạng\nVui lòng kiểm tra kết nối mạng của thiết bị';

  @override
  String get errorConnectionReset =>
      'Kết nối bị đặt lại\nMáy chủ có thể không hỗ trợ kết nối WebSocket';

  @override
  String get errorTlsCertificate =>
      'Lỗi chứng chỉ TLS\nĐối với kết nối LAN, hãy thử tắt kết nối mã hóa (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Kết nối thất bại: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Xác thực thất bại: $error';
  }
}
