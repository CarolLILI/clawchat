import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bg'),
    Locale('bn'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nb'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sv'),
    Locale('ta'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW')
  ];

  /// No description provided for @appTitle.
  ///
  /// In zh, this message translates to:
  /// **'ClawChat'**
  String get appTitle;

  /// No description provided for @exportConfig.
  ///
  /// In zh, this message translates to:
  /// **'导出配置'**
  String get exportConfig;

  /// No description provided for @importConfig.
  ///
  /// In zh, this message translates to:
  /// **'导入配置'**
  String get importConfig;

  /// No description provided for @noServers.
  ///
  /// In zh, this message translates to:
  /// **'还没有服务器'**
  String get noServers;

  /// No description provided for @addServerHint.
  ///
  /// In zh, this message translates to:
  /// **'添加 OpenClaw 服务器，开始与 AI 对话'**
  String get addServerHint;

  /// No description provided for @addServer.
  ///
  /// In zh, this message translates to:
  /// **'添加服务器'**
  String get addServer;

  /// No description provided for @serverCount.
  ///
  /// In zh, this message translates to:
  /// **'服务器 ({count})'**
  String serverCount(int count);

  /// No description provided for @confirmDelete.
  ///
  /// In zh, this message translates to:
  /// **'确认删除'**
  String get confirmDelete;

  /// No description provided for @confirmDeleteMessage.
  ///
  /// In zh, this message translates to:
  /// **'确定要删除 \"{name}\" 吗？'**
  String confirmDeleteMessage(String name);

  /// No description provided for @cancel.
  ///
  /// In zh, this message translates to:
  /// **'取消'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In zh, this message translates to:
  /// **'删除'**
  String get delete;

  /// No description provided for @serverDeleted.
  ///
  /// In zh, this message translates to:
  /// **'服务器已删除'**
  String get serverDeleted;

  /// No description provided for @configBackupSubject.
  ///
  /// In zh, this message translates to:
  /// **'ClawChat 配置备份'**
  String get configBackupSubject;

  /// No description provided for @configExported.
  ///
  /// In zh, this message translates to:
  /// **'配置已导出'**
  String get configExported;

  /// No description provided for @exportFailed.
  ///
  /// In zh, this message translates to:
  /// **'导出失败: {error}'**
  String exportFailed(String error);

  /// No description provided for @cannotReadFile.
  ///
  /// In zh, this message translates to:
  /// **'无法读取文件'**
  String get cannotReadFile;

  /// No description provided for @importConfigTitle.
  ///
  /// In zh, this message translates to:
  /// **'导入配置'**
  String get importConfigTitle;

  /// No description provided for @importConfigMessage.
  ///
  /// In zh, this message translates to:
  /// **'导入配置将合并到现有服务器列表中，是否继续？'**
  String get importConfigMessage;

  /// No description provided for @importAction.
  ///
  /// In zh, this message translates to:
  /// **'导入'**
  String get importAction;

  /// No description provided for @configImported.
  ///
  /// In zh, this message translates to:
  /// **'配置导入成功'**
  String get configImported;

  /// No description provided for @importFailed.
  ///
  /// In zh, this message translates to:
  /// **'导入失败: {error}'**
  String importFailed(String error);

  /// No description provided for @editServer.
  ///
  /// In zh, this message translates to:
  /// **'编辑服务器'**
  String get editServer;

  /// No description provided for @basicInfo.
  ///
  /// In zh, this message translates to:
  /// **'基本信息'**
  String get basicInfo;

  /// No description provided for @nameLabel.
  ///
  /// In zh, this message translates to:
  /// **'名称'**
  String get nameLabel;

  /// No description provided for @nameHint.
  ///
  /// In zh, this message translates to:
  /// **'例如：腾讯云服务器'**
  String get nameHint;

  /// No description provided for @pleaseEnterName.
  ///
  /// In zh, this message translates to:
  /// **'请输入名称'**
  String get pleaseEnterName;

  /// No description provided for @connectionAddress.
  ///
  /// In zh, this message translates to:
  /// **'连接地址'**
  String get connectionAddress;

  /// No description provided for @serverAddress.
  ///
  /// In zh, this message translates to:
  /// **'服务器地址'**
  String get serverAddress;

  /// No description provided for @addressHint.
  ///
  /// In zh, this message translates to:
  /// **'192.168.1.100 或 example.com'**
  String get addressHint;

  /// No description provided for @pleaseEnterAddress.
  ///
  /// In zh, this message translates to:
  /// **'请输入地址'**
  String get pleaseEnterAddress;

  /// No description provided for @portLabel.
  ///
  /// In zh, this message translates to:
  /// **'端口'**
  String get portLabel;

  /// No description provided for @pleaseEnterPort.
  ///
  /// In zh, this message translates to:
  /// **'请输入端口'**
  String get pleaseEnterPort;

  /// No description provided for @invalidPort.
  ///
  /// In zh, this message translates to:
  /// **'无效端口号'**
  String get invalidPort;

  /// No description provided for @encryptedConnection.
  ///
  /// In zh, this message translates to:
  /// **'加密连接 (WSS)'**
  String get encryptedConnection;

  /// No description provided for @cloudServerRecommended.
  ///
  /// In zh, this message translates to:
  /// **'云服务器建议开启'**
  String get cloudServerRecommended;

  /// No description provided for @authMethod.
  ///
  /// In zh, this message translates to:
  /// **'认证方式'**
  String get authMethod;

  /// No description provided for @passwordLabel.
  ///
  /// In zh, this message translates to:
  /// **'密码'**
  String get passwordLabel;

  /// No description provided for @tokenLabel.
  ///
  /// In zh, this message translates to:
  /// **'Token'**
  String get tokenLabel;

  /// No description provided for @enterGatewayPassword.
  ///
  /// In zh, this message translates to:
  /// **'输入 Gateway 密码'**
  String get enterGatewayPassword;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In zh, this message translates to:
  /// **'请输入密码'**
  String get pleaseEnterPassword;

  /// No description provided for @passwordHelp.
  ///
  /// In zh, this message translates to:
  /// **'密码位于服务器 ~/.openclaw/openclaw.json 的 gateway.auth.password'**
  String get passwordHelp;

  /// No description provided for @authTokenLabel.
  ///
  /// In zh, this message translates to:
  /// **'Auth Token'**
  String get authTokenLabel;

  /// No description provided for @getFromConfig.
  ///
  /// In zh, this message translates to:
  /// **'从 OpenClaw 配置中获取'**
  String get getFromConfig;

  /// No description provided for @pleaseEnterToken.
  ///
  /// In zh, this message translates to:
  /// **'请输入 Token'**
  String get pleaseEnterToken;

  /// No description provided for @tokenHelp.
  ///
  /// In zh, this message translates to:
  /// **'Token 位于 ~/.openclaw/openclaw.json 的 gateway.auth.token'**
  String get tokenHelp;

  /// No description provided for @connectionSuccess.
  ///
  /// In zh, this message translates to:
  /// **'连接成功'**
  String get connectionSuccess;

  /// No description provided for @connectionFailed.
  ///
  /// In zh, this message translates to:
  /// **'连接失败'**
  String get connectionFailed;

  /// No description provided for @testConnection.
  ///
  /// In zh, this message translates to:
  /// **'测试连接'**
  String get testConnection;

  /// No description provided for @save.
  ///
  /// In zh, this message translates to:
  /// **'保存'**
  String get save;

  /// No description provided for @serverUpdated.
  ///
  /// In zh, this message translates to:
  /// **'服务器已更新'**
  String get serverUpdated;

  /// No description provided for @serverAdded.
  ///
  /// In zh, this message translates to:
  /// **'服务器已添加'**
  String get serverAdded;

  /// No description provided for @notConnectedToServer.
  ///
  /// In zh, this message translates to:
  /// **'未连接到服务器'**
  String get notConnectedToServer;

  /// No description provided for @chatTitle.
  ///
  /// In zh, this message translates to:
  /// **'小虾'**
  String get chatTitle;

  /// No description provided for @connectingStatus.
  ///
  /// In zh, this message translates to:
  /// **'连接中...'**
  String get connectingStatus;

  /// No description provided for @retry.
  ///
  /// In zh, this message translates to:
  /// **'重试'**
  String get retry;

  /// No description provided for @disconnected.
  ///
  /// In zh, this message translates to:
  /// **'未连接'**
  String get disconnected;

  /// No description provided for @connectAction.
  ///
  /// In zh, this message translates to:
  /// **'连接'**
  String get connectAction;

  /// No description provided for @connected.
  ///
  /// In zh, this message translates to:
  /// **'已连接'**
  String get connected;

  /// No description provided for @connectingTooltip.
  ///
  /// In zh, this message translates to:
  /// **'连接中'**
  String get connectingTooltip;

  /// No description provided for @connectionError.
  ///
  /// In zh, this message translates to:
  /// **'连接错误'**
  String get connectionError;

  /// No description provided for @startChatting.
  ///
  /// In zh, this message translates to:
  /// **'开始聊天吧'**
  String get startChatting;

  /// No description provided for @chatHint.
  ///
  /// In zh, this message translates to:
  /// **'输入消息与小虾对话'**
  String get chatHint;

  /// No description provided for @suggestionHello.
  ///
  /// In zh, this message translates to:
  /// **'你好'**
  String get suggestionHello;

  /// No description provided for @suggestionWriteCode.
  ///
  /// In zh, this message translates to:
  /// **'帮我写代码'**
  String get suggestionWriteCode;

  /// No description provided for @suggestionSummarize.
  ///
  /// In zh, this message translates to:
  /// **'总结这篇文章'**
  String get suggestionSummarize;

  /// No description provided for @addressLabel.
  ///
  /// In zh, this message translates to:
  /// **'地址'**
  String get addressLabel;

  /// No description provided for @tlsLabel.
  ///
  /// In zh, this message translates to:
  /// **'TLS'**
  String get tlsLabel;

  /// No description provided for @tlsEnabled.
  ///
  /// In zh, this message translates to:
  /// **'已启用'**
  String get tlsEnabled;

  /// No description provided for @tlsDisabled.
  ///
  /// In zh, this message translates to:
  /// **'未启用'**
  String get tlsDisabled;

  /// No description provided for @switchServer.
  ///
  /// In zh, this message translates to:
  /// **'切换服务器'**
  String get switchServer;

  /// No description provided for @clearChatHistory.
  ///
  /// In zh, this message translates to:
  /// **'清空聊天记录'**
  String get clearChatHistory;

  /// No description provided for @serverSettings.
  ///
  /// In zh, this message translates to:
  /// **'服务器设置'**
  String get serverSettings;

  /// No description provided for @defaultBadge.
  ///
  /// In zh, this message translates to:
  /// **'默认'**
  String get defaultBadge;

  /// No description provided for @addressCopied.
  ///
  /// In zh, this message translates to:
  /// **'地址已复制'**
  String get addressCopied;

  /// No description provided for @copyAddress.
  ///
  /// In zh, this message translates to:
  /// **'复制地址'**
  String get copyAddress;

  /// No description provided for @edit.
  ///
  /// In zh, this message translates to:
  /// **'编辑'**
  String get edit;

  /// No description provided for @justNow.
  ///
  /// In zh, this message translates to:
  /// **'刚刚'**
  String get justNow;

  /// No description provided for @minutesAgo.
  ///
  /// In zh, this message translates to:
  /// **'{minutes}分钟前'**
  String minutesAgo(int minutes);

  /// No description provided for @hoursAgo.
  ///
  /// In zh, this message translates to:
  /// **'{hours}小时前'**
  String hoursAgo(int hours);

  /// No description provided for @daysAgo.
  ///
  /// In zh, this message translates to:
  /// **'{days}天前'**
  String daysAgo(int days);

  /// No description provided for @inputMessageHint.
  ///
  /// In zh, this message translates to:
  /// **'输入消息...'**
  String get inputMessageHint;

  /// No description provided for @errorCannotConnect.
  ///
  /// In zh, this message translates to:
  /// **'无法连接到服务器 {address}\n请检查：\n• 服务器地址和端口是否正确\n• 设备是否与服务器在同一网络\n• 服务器是否已启动\n({detail})'**
  String errorCannotConnect(String address, String detail);

  /// No description provided for @errorConnectionTimeout.
  ///
  /// In zh, this message translates to:
  /// **'连接服务器超时 {address}\n请检查：\n• 服务器地址是否正确\n• 是否存在防火墙限制\n• 设备网络是否正常'**
  String errorConnectionTimeout(String address);

  /// No description provided for @errorNetworkCheckFailed.
  ///
  /// In zh, this message translates to:
  /// **'网络检查失败: {error}'**
  String errorNetworkCheckFailed(String error);

  /// No description provided for @errorWebSocketHandshakeTimeout.
  ///
  /// In zh, this message translates to:
  /// **'WebSocket 握手超时，服务器未响应 WebSocket 升级请求'**
  String get errorWebSocketHandshakeTimeout;

  /// No description provided for @errorWebSocketError.
  ///
  /// In zh, this message translates to:
  /// **'WebSocket 连接错误: {error}'**
  String errorWebSocketError(String error);

  /// No description provided for @errorServerClosedConnection.
  ///
  /// In zh, this message translates to:
  /// **'服务器关闭了连接'**
  String get errorServerClosedConnection;

  /// No description provided for @errorServerClosedConnectionWithDetail.
  ///
  /// In zh, this message translates to:
  /// **'服务器关闭了连接{detail}'**
  String errorServerClosedConnectionWithDetail(String detail);

  /// No description provided for @errorGatewayHandshakeTimeout.
  ///
  /// In zh, this message translates to:
  /// **'Gateway 协议握手超时\nWebSocket 已连接，但服务器未完成认证握手。\n请检查：\n• Auth Token 是否正确\n• 服务器 Gateway 版本是否兼容'**
  String get errorGatewayHandshakeTimeout;

  /// No description provided for @errorWebSocketTimeout.
  ///
  /// In zh, this message translates to:
  /// **'WebSocket 连接超时'**
  String get errorWebSocketTimeout;

  /// No description provided for @errorConnectionRefused.
  ///
  /// In zh, this message translates to:
  /// **'连接被拒绝\n服务器可能未运行 Gateway 服务'**
  String get errorConnectionRefused;

  /// No description provided for @errorNetworkUnreachable.
  ///
  /// In zh, this message translates to:
  /// **'网络不可达\n请检查设备网络连接'**
  String get errorNetworkUnreachable;

  /// No description provided for @errorConnectionReset.
  ///
  /// In zh, this message translates to:
  /// **'连接被重置\n服务器可能不支持 WebSocket 连接'**
  String get errorConnectionReset;

  /// No description provided for @errorTlsCertificate.
  ///
  /// In zh, this message translates to:
  /// **'TLS 证书错误\n如果是局域网连接，请关闭加密连接 (WSS)'**
  String get errorTlsCertificate;

  /// No description provided for @errorGenericConnection.
  ///
  /// In zh, this message translates to:
  /// **'连接失败: {error}'**
  String errorGenericConnection(String error);

  /// No description provided for @errorAuthFailed.
  ///
  /// In zh, this message translates to:
  /// **'认证失败: {error}'**
  String errorAuthFailed(String error);
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'bg',
        'bn',
        'cs',
        'da',
        'de',
        'el',
        'en',
        'es',
        'fa',
        'fi',
        'fr',
        'he',
        'hi',
        'hr',
        'hu',
        'id',
        'it',
        'ja',
        'ko',
        'ms',
        'nb',
        'nl',
        'pl',
        'pt',
        'ro',
        'ru',
        'sk',
        'sv',
        'ta',
        'th',
        'tr',
        'uk',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return SZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return SAr();
    case 'bg':
      return SBg();
    case 'bn':
      return SBn();
    case 'cs':
      return SCs();
    case 'da':
      return SDa();
    case 'de':
      return SDe();
    case 'el':
      return SEl();
    case 'en':
      return SEn();
    case 'es':
      return SEs();
    case 'fa':
      return SFa();
    case 'fi':
      return SFi();
    case 'fr':
      return SFr();
    case 'he':
      return SHe();
    case 'hi':
      return SHi();
    case 'hr':
      return SHr();
    case 'hu':
      return SHu();
    case 'id':
      return SId();
    case 'it':
      return SIt();
    case 'ja':
      return SJa();
    case 'ko':
      return SKo();
    case 'ms':
      return SMs();
    case 'nb':
      return SNb();
    case 'nl':
      return SNl();
    case 'pl':
      return SPl();
    case 'pt':
      return SPt();
    case 'ro':
      return SRo();
    case 'ru':
      return SRu();
    case 'sk':
      return SSk();
    case 'sv':
      return SSv();
    case 'ta':
      return STa();
    case 'th':
      return STh();
    case 'tr':
      return STr();
    case 'uk':
      return SUk();
    case 'vi':
      return SVi();
    case 'zh':
      return SZh();
  }

  throw FlutterError(
      'S.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
