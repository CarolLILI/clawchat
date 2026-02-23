// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class SId extends S {
  SId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'ClawChat';

  @override
  String get exportConfig => 'Ekspor Konfigurasi';

  @override
  String get importConfig => 'Impor Konfigurasi';

  @override
  String get noServers => 'Belum Ada Server';

  @override
  String get addServerHint =>
      'Tambahkan server OpenClaw untuk mulai mengobrol dengan AI';

  @override
  String get addServer => 'Tambah Server';

  @override
  String serverCount(int count) {
    return 'Server ($count)';
  }

  @override
  String get confirmDelete => 'Konfirmasi Hapus';

  @override
  String confirmDeleteMessage(String name) {
    return 'Apakah Anda yakin ingin menghapus \"$name\"?';
  }

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Hapus';

  @override
  String get serverDeleted => 'Server dihapus';

  @override
  String get configBackupSubject => 'Cadangan Konfigurasi ClawChat';

  @override
  String get configExported => 'Konfigurasi diekspor';

  @override
  String exportFailed(String error) {
    return 'Ekspor gagal: $error';
  }

  @override
  String get cannotReadFile => 'Tidak dapat membaca file';

  @override
  String get importConfigTitle => 'Impor Konfigurasi';

  @override
  String get importConfigMessage =>
      'Konfigurasi yang diimpor akan digabungkan dengan daftar server yang ada. Lanjutkan?';

  @override
  String get importAction => 'Impor';

  @override
  String get configImported => 'Konfigurasi berhasil diimpor';

  @override
  String importFailed(String error) {
    return 'Impor gagal: $error';
  }

  @override
  String get editServer => 'Edit Server';

  @override
  String get basicInfo => 'Informasi Dasar';

  @override
  String get nameLabel => 'Nama';

  @override
  String get nameHint => 'Contoh: Server Cloud Saya';

  @override
  String get pleaseEnterName => 'Masukkan nama';

  @override
  String get connectionAddress => 'Alamat Koneksi';

  @override
  String get serverAddress => 'Alamat Server';

  @override
  String get addressHint => '192.168.1.100 or example.com';

  @override
  String get pleaseEnterAddress => 'Masukkan alamat';

  @override
  String get portLabel => 'Port';

  @override
  String get pleaseEnterPort => 'Masukkan port';

  @override
  String get invalidPort => 'Nomor port tidak valid';

  @override
  String get encryptedConnection => 'Koneksi Terenkripsi (WSS)';

  @override
  String get cloudServerRecommended => 'Direkomendasikan untuk server cloud';

  @override
  String get authMethod => 'Metode Autentikasi';

  @override
  String get passwordLabel => 'Kata Sandi';

  @override
  String get tokenLabel => 'Token';

  @override
  String get enterGatewayPassword => 'Masukkan kata sandi Gateway';

  @override
  String get pleaseEnterPassword => 'Masukkan kata sandi';

  @override
  String get passwordHelp =>
      'Kata sandi ada di gateway.auth.password dalam ~/.openclaw/openclaw.json';

  @override
  String get authTokenLabel => 'Auth Token';

  @override
  String get getFromConfig => 'Ambil dari konfigurasi OpenClaw';

  @override
  String get pleaseEnterToken => 'Masukkan Token';

  @override
  String get tokenHelp =>
      'Token ada di gateway.auth.token dalam ~/.openclaw/openclaw.json';

  @override
  String get connectionSuccess => 'Koneksi Berhasil';

  @override
  String get connectionFailed => 'Koneksi Gagal';

  @override
  String get testConnection => 'Uji Koneksi';

  @override
  String get save => 'Simpan';

  @override
  String get serverUpdated => 'Server diperbarui';

  @override
  String get serverAdded => 'Server ditambahkan';

  @override
  String get notConnectedToServer => 'Tidak terhubung ke server';

  @override
  String get chatTitle => 'ClawChat';

  @override
  String get connectingStatus => 'Menghubungkan...';

  @override
  String get retry => 'Coba Lagi';

  @override
  String get disconnected => 'Terputus';

  @override
  String get connectAction => 'Hubungkan';

  @override
  String get connected => 'Terhubung';

  @override
  String get connectingTooltip => 'Menghubungkan';

  @override
  String get connectionError => 'Kesalahan Koneksi';

  @override
  String get startChatting => 'Mulai Mengobrol';

  @override
  String get chatHint => 'Ketik pesan untuk mengobrol';

  @override
  String get suggestionHello => 'Halo';

  @override
  String get suggestionWriteCode => 'Bantu saya menulis kode';

  @override
  String get suggestionSummarize => 'Rangkum artikel ini';

  @override
  String get addressLabel => 'Alamat';

  @override
  String get tlsLabel => 'TLS';

  @override
  String get tlsEnabled => 'Aktif';

  @override
  String get tlsDisabled => 'Nonaktif';

  @override
  String get switchServer => 'Ganti Server';

  @override
  String get clearChatHistory => 'Hapus Riwayat Obrolan';

  @override
  String get serverSettings => 'Pengaturan Server';

  @override
  String get defaultBadge => 'Default';

  @override
  String get addressCopied => 'Alamat disalin';

  @override
  String get copyAddress => 'Salin Alamat';

  @override
  String get edit => 'Edit';

  @override
  String get justNow => 'Baru saja';

  @override
  String minutesAgo(int minutes) {
    return '$minutes menit yang lalu';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours jam yang lalu';
  }

  @override
  String daysAgo(int days) {
    return '$days hari yang lalu';
  }

  @override
  String get inputMessageHint => 'Ketik pesan...';

  @override
  String errorCannotConnect(String address, String detail) {
    return 'Tidak dapat terhubung ke server $address\nSilakan periksa:\n• Alamat dan port server sudah benar\n• Perangkat berada di jaringan yang sama dengan server\n• Server sedang berjalan\n($detail)';
  }

  @override
  String errorConnectionTimeout(String address) {
    return 'Koneksi ke $address habis waktu\nSilakan periksa:\n• Alamat server sudah benar\n• Tidak ada pembatasan firewall\n• Jaringan perangkat berfungsi normal';
  }

  @override
  String errorNetworkCheckFailed(String error) {
    return 'Pemeriksaan jaringan gagal: $error';
  }

  @override
  String get errorWebSocketHandshakeTimeout =>
      'WebSocket handshake habis waktu, server tidak merespons permintaan upgrade';

  @override
  String errorWebSocketError(String error) {
    return 'Kesalahan koneksi WebSocket: $error';
  }

  @override
  String get errorServerClosedConnection => 'Server menutup koneksi';

  @override
  String errorServerClosedConnectionWithDetail(String detail) {
    return 'Server menutup koneksi$detail';
  }

  @override
  String get errorGatewayHandshakeTimeout =>
      'Handshake protokol Gateway habis waktu\nWebSocket terhubung, tetapi server tidak menyelesaikan autentikasi.\nSilakan periksa:\n• Auth Token sudah benar\n• Versi Gateway server kompatibel';

  @override
  String get errorWebSocketTimeout => 'Koneksi WebSocket habis waktu';

  @override
  String get errorConnectionRefused =>
      'Koneksi ditolak\nServer mungkin tidak menjalankan layanan Gateway';

  @override
  String get errorNetworkUnreachable =>
      'Jaringan tidak dapat dijangkau\nSilakan periksa koneksi jaringan perangkat';

  @override
  String get errorConnectionReset =>
      'Koneksi direset\nServer mungkin tidak mendukung koneksi WebSocket';

  @override
  String get errorTlsCertificate =>
      'Kesalahan sertifikat TLS\nUntuk koneksi LAN, coba nonaktifkan koneksi terenkripsi (WSS)';

  @override
  String errorGenericConnection(String error) {
    return 'Koneksi gagal: $error';
  }

  @override
  String errorAuthFailed(String error) {
    return 'Autentikasi gagal: $error';
  }
}
