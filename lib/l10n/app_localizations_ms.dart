// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class SMs extends S {
  SMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Eksport Konfigurasi';

  @override
  String get importConfig => 'Import Konfigurasi';

  @override
  String get noServers => 'Tiada Pelayan Lagi';

  @override
  String get addServerHint =>
      'Tambah pelayan OpenClaw untuk mula bersembang dengan AI';

  @override
  String get addServer => 'Tambah Pelayan';

  @override
  String serverCount(int count) {
    return 'Pelayan ($count)';
  }

  @override
  String get confirmDelete => 'Sahkan Pemadaman';

  @override
  String confirmDeleteMessage(String name) {
    return 'Adakah anda pasti mahu memadamkan \"$name\"?';
  }

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Padam';

  @override
  String get serverDeleted => 'Pelayan dipadamkan';

  @override
  String get configBackupSubject => 'Sandaran Konfigurasi ClawChat';

  @override
  String get configExported => 'Konfigurasi dieksport';

  @override
  String exportFailed(String error) {
    return 'Eksport gagal: $error';
  }

  @override
  String get cannotReadFile => 'Tidak dapat membaca fail';

  @override
  String get importConfigTitle => 'Import Konfigurasi';

  @override
  String get importConfigMessage =>
      'Konfigurasi yang diimport akan digabungkan dengan senarai pelayan sedia ada. Teruskan?';

  @override
  String get importAction => 'Import';

  @override
  String get configImported => 'Konfigurasi berjaya diimport';

  @override
  String importFailed(String error) {
    return 'Import gagal: $error';
  }

  @override
  String get editServer => 'Edit Pelayan';

  @override
  String get basicInfo => 'Maklumat Asas';

  @override
  String get nameLabel => 'Nama';

  @override
  String get nameHint => 'Contoh: Pelayan Awan Saya';

  @override
  String get pleaseEnterName => 'Sila masukkan nama';

  @override
  String get connectionAddress => 'Alamat Sambungan';

  @override
  String get serverAddress => 'Alamat Pelayan';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Sila masukkan alamat';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Sila masukkan port';

  @override
  String get invalidPort => 'Nombor port tidak sah';

  @override
  String get encryptedConnection => 'Sambungan Disulitkan (WSS)';

  @override
  String get cloudServerRecommended => 'Disyorkan untuk pelayan awan';

  @override
  String get authMethod => 'Kaedah Pengesahan';

  @override
  String get passwordLabel => 'Kata Laluan';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Masukkan kata laluan Gateway';

  @override
  String get pleaseEnterPassword => 'Sila masukkan kata laluan';

  @override
  String get passwordHelp =>
      'Kata laluan berada di gateway.auth.password dalam ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Dapatkan dari konfigurasi OpenClaw';

  @override
  String get pleaseEnterToken => 'Sila masukkan Token';

  @override
  String get tokenHelp =>
      'Token berada di gateway.auth.token dalam ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Sambungan Berjaya';

  @override
  String get connectionFailed => 'Sambungan Gagal';

  @override
  String get testConnection => 'Uji Sambungan';

  @override
  String get save => 'Simpan';

  @override
  String get serverUpdated => 'Pelayan dikemas kini';

  @override
  String get serverAdded => 'Pelayan ditambah';

  @override
  String get notConnectedToServer => 'Tidak disambungkan ke pelayan';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Menyambung...';

  @override
  String get retry => 'Cuba Semula';

  @override
  String get disconnected => 'Tidak Disambungkan';

  @override
  String get connectAction => 'Sambung';

  @override
  String get connected => 'Disambungkan';

  @override
  String get connectingTooltip => 'Menyambung';

  @override
  String get connectionError => 'Ralat Sambungan';

  @override
  String get startChatting => 'Mula Bersembang';

  @override
  String get chatHint => 'Taip mesej untuk bersembang';

  @override
  String get suggestionHello => 'Hai';

  @override
  String get suggestionWriteCode => 'Tolong tulis kod';

  @override
  String get suggestionSummarize => 'Ringkaskan artikel ini';

  @override
  String get addressLabel => 'Alamat';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Diaktifkan';

  @override
  String get tlsDisabled => 'Dinyahaktifkan';

  @override
  String get switchServer => 'Tukar Pelayan';

  @override
  String get clearChatHistory => 'Kosongkan Sejarah Sembang';

  @override
  String get serverSettings => 'Tetapan Pelayan';

  @override
  String get defaultBadge => 'Lalai';

  @override
  String get addressCopied => 'Alamat disalin';

  @override
  String get copyAddress => 'Salin Alamat';

  @override
  String get edit => 'Edit';

  @override
  String get justNow => 'Baru sahaja';

  @override
  String minutesAgo(int minutes) {
    return '$minutes minit lalu';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours jam lalu';
  }

  @override
  String daysAgo(int days) {
    return '$days hari lalu';
  }

  @override
  String get inputMessageHint => 'Taip mesej...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Tidak dapat menyambung ke pelayan $address\nSila semak:\n• Alamat dan port pelayan betul\n• Peranti berada dalam rangkaian yang sama dengan pelayan\n• Pelayan sedang berjalan\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Sambungan ke $address tamat masa\nSila semak:\n• Alamat pelayan betul\n• Tiada sekatan firewall\n• Rangkaian peranti berfungsi';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Semakan rangkaian gagal: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket handshake tamat masa, pelayan tidak bertindak balas terhadap permintaan naik taraf';

  @override
  String errorWebSocketError(String error) {
    return 'Ralat sambungan WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Pelayan menutup sambungan';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Pelayan menutup sambungan$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Handshake protokol Gateway tamat masa\nWebSocket disambungkan, tetapi pelayan tidak melengkapkan pengesahan.\nSila semak:\n• Auth Token betul\n• Versi Gateway pelayan serasi';

  @override
  String get errorWebSocketTimeout => 'Sambungan WebSocket tamat masa';

  @override
  String get errorConnectionRefused =>
      'Sambungan ditolak\nPelayan mungkin tidak menjalankan perkhidmatan Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Rangkaian tidak dapat dicapai\nSila semak sambungan rangkaian peranti';

  @override
  String get errorConnectionReset =>
      'Sambungan ditetapkan semula\nPelayan mungkin tidak menyokong sambungan WebSocket';

  @override
  String get errorTlsCertificate =>
      'Ralat sijil TLS\nUntuk sambungan LAN, cuba nyahaktifkan sambungan disulitkan (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Sambungan gagal: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Pengesahan gagal: $error';
  }
}
