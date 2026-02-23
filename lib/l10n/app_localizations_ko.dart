// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class SKo extends S {
  SKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => '설정 내보내기';

  @override
  String get importConfig => '설정 가져오기';

  @override
  String get noServers => '서버가 없습니다';

  @override
  String get addServerHint => 'OpenClaw 서버를 추가하여 AI와 대화를 시작하세요';

  @override
  String get addServer => '서버 추가';

  @override
  String serverCount(int count) {
    return '서버 ($count)';
  }

  @override
  String get confirmDelete => '삭제 확인';

  @override
  String confirmDeleteMessage(String name) {
    return '\"$name\"을(를) 삭제하시겠습니까?';
  }

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get serverDeleted => '서버가 삭제되었습니다';

  @override
  String get configBackupSubject => 'ClawChat 설정 백업';

  @override
  String get configExported => '설정을 내보냈습니다';

  @override
  String exportFailed(String error) {
    return '내보내기 실패: $error';
  }

  @override
  String get cannotReadFile => '파일을 읽을 수 없습니다';

  @override
  String get importConfigTitle => '설정 가져오기';

  @override
  String get importConfigMessage => '가져온 설정이 기존 서버 목록에 병합됩니다. 계속하시겠습니까?';

  @override
  String get importAction => '가져오기';

  @override
  String get configImported => '설정을 성공적으로 가져왔습니다';

  @override
  String importFailed(String error) {
    return '가져오기 실패: $error';
  }

  @override
  String get editServer => '서버 편집';

  @override
  String get basicInfo => '기본 정보';

  @override
  String get nameLabel => '이름';

  @override
  String get nameHint => '예: 내 클라우드 서버';

  @override
  String get pleaseEnterName => '이름을 입력하세요';

  @override
  String get connectionAddress => '연결 주소';

  @override
  String get serverAddress => '서버 주소';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => '주소를 입력하세요';

  @override
  String get portLabel => '포트';

  @override
  String get pleaseEnterPort => '포트를 입력하세요';

  @override
  String get invalidPort => '잘못된 포트 번호입니다';

  @override
  String get encryptedConnection => '암호화 연결 (WSS)';

  @override
  String get cloudServerRecommended => '클라우드 서버에 권장';

  @override
  String get authMethod => '인증 방법';

  @override
  String get passwordLabel => '비밀번호';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Gateway 비밀번호 입력';

  @override
  String get pleaseEnterPassword => '비밀번호를 입력하세요';

  @override
  String get passwordHelp =>
      '비밀번호는 ~/.openclaw/openclaw.json의 gateway.auth.password에 있습니다';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'OpenClaw 설정에서 가져오기';

  @override
  String get pleaseEnterToken => 'Token을 입력하세요';

  @override
  String get tokenHelp =>
      'Token은 ~/.openclaw/openclaw.json의 gateway.auth.token에 있습니다';

  @override
  String get connectionSuccess => '연결 성공';

  @override
  String get connectionFailed => '연결 실패';

  @override
  String get testConnection => '연결 테스트';

  @override
  String get save => '저장';

  @override
  String get serverUpdated => '서버가 업데이트되었습니다';

  @override
  String get serverAdded => '서버가 추가되었습니다';

  @override
  String get notConnectedToServer => '서버에 연결되지 않음';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => '연결 중...';

  @override
  String get retry => '재시도';

  @override
  String get disconnected => '연결 안 됨';

  @override
  String get connectAction => '연결';

  @override
  String get connected => '연결됨';

  @override
  String get connectingTooltip => '연결 중';

  @override
  String get connectionError => '연결 오류';

  @override
  String get startChatting => '대화를 시작하세요';

  @override
  String get chatHint => '메시지를 입력하여 대화하기';

  @override
  String get suggestionHello => '안녕하세요';

  @override
  String get suggestionWriteCode => '코드 작성을 도와줘';

  @override
  String get suggestionSummarize => '이 글을 요약해 줘';

  @override
  String get addressLabel => '주소';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => '활성화';

  @override
  String get tlsDisabled => '비활성화';

  @override
  String get switchServer => '서버 전환';

  @override
  String get clearChatHistory => '채팅 기록 삭제';

  @override
  String get serverSettings => '서버 설정';

  @override
  String get defaultBadge => '기본';

  @override
  String get addressCopied => '주소가 복사되었습니다';

  @override
  String get copyAddress => '주소 복사';

  @override
  String get edit => '편집';

  @override
  String get justNow => '방금 전';

  @override
  String minutesAgo(int minutes) {
    return '$minutes분 전';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours시간 전';
  }

  @override
  String daysAgo(int days) {
    return '$days일 전';
  }

  @override
  String get inputMessageHint => '메시지를 입력하세요...';

  @override
  String errorCannotConnect(String address, String detail) {
    return '서버 $address에 연결할 수 없습니다\n다음을 확인하세요:\n• 서버 주소와 포트가 올바른지\n• 기기가 서버와 같은 네트워크에 있는지\n• 서버가 실행 중인지\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return '$address 연결 시간이 초과되었습니다\n다음을 확인하세요:\n• 서버 주소가 올바른지\n• 방화벽 제한이 없는지\n• 기기 네트워크가 정상인지';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return '네트워크 확인 실패: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket 핸드셰이크 시간 초과, 서버가 업그레이드 요청에 응답하지 않았습니다';

  @override
  String errorWebSocketError(String error) {
    return 'WebSocket 연결 오류: $error';
  }

  @override
  String get errorServerClosedConnection => '서버가 연결을 종료했습니다';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return '서버가 연결을 종료했습니다$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Gateway 프로토콜 핸드셰이크 시간 초과\nWebSocket은 연결되었으나 서버가 인증 핸드셰이크를 완료하지 않았습니다.\n다음을 확인하세요:\n• Auth Token이 올바른지\n• 서버 Gateway 버전이 호환되는지';

  @override
  String get errorWebSocketTimeout => 'WebSocket 연결 시간 초과';

  @override
  String get errorConnectionRefused =>
      '연결이 거부되었습니다\n서버에서 Gateway 서비스가 실행되지 않을 수 있습니다';

  @override
  String get errorNetworkUnreachable => '네트워크에 연결할 수 없습니다\n기기 네트워크 연결을 확인하세요';

  @override
  String get errorConnectionReset =>
      '연결이 재설정되었습니다\n서버가 WebSocket 연결을 지원하지 않을 수 있습니다';

  @override
  String get errorTlsCertificate =>
      'TLS 인증서 오류\nLAN 연결의 경우 암호화 연결 (WSS)을 비활성화해 보세요';

  @override
  String errorGenericConnection(String error) {
    return '연결 실패: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return '인증 실패: $error';
  }
}
