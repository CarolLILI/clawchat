import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../l10n/app_localizations.dart';

import '../constants/app_theme.dart';
import '../l10n/error_localizations.dart';
import '../models/server_config.dart';
import '../providers/server_provider.dart';
import '../services/gateway_client.dart';

class ServerEditPage extends ConsumerStatefulWidget {
  final ServerConfig? server;

  const ServerEditPage({super.key, this.server});

  @override
  ConsumerState<ServerEditPage> createState() => _ServerEditPageState();
}

class _ServerEditPageState extends ConsumerState<ServerEditPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _hostController = TextEditingController();
  final _portController = TextEditingController(text: '18789');
  final _tokenController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isEditing = false;
  bool _useTLS = false;
  bool _isTesting = false;
  bool _testSuccess = false;
  String? _testError;
  GatewayErrorType? _testErrorType;
  Map<String, String> _testErrorParams = {};
  String? _serverId;
  String _authMode = 'password';

  @override
  void initState() {
    super.initState();
    if (widget.server != null) {
      _isEditing = true;
      _serverId = widget.server!.id;
      _nameController.text = widget.server!.name;
      _hostController.text = widget.server!.host;
      _portController.text = widget.server!.port.toString();
      _tokenController.text = widget.server!.token;
      _passwordController.text = widget.server!.password;
      _useTLS = widget.server!.useTLS;
      _authMode = widget.server!.authMode;
    } else {
      _serverId = const Uuid().v4();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _hostController.dispose();
    _portController.dispose();
    _tokenController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? l10n.editServer : l10n.addServer),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            _buildSectionHeader(l10n.basicInfo),
            _buildCard([
              _buildTextField(
                controller: _nameController,
                label: l10n.nameLabel,
                hint: l10n.nameHint,
                icon: Icons.label_outline,
                validator: (v) => (v == null || v.isEmpty) ? l10n.pleaseEnterName : null,
              ),
            ]),

            const SizedBox(height: 20),

            _buildSectionHeader(l10n.connectionAddress),
            _buildCard([
              _buildTextField(
                controller: _hostController,
                label: l10n.serverAddress,
                hint: l10n.addressHint,
                icon: Icons.dns_outlined,
                validator: (v) => (v == null || v.isEmpty) ? l10n.pleaseEnterAddress : null,
              ),
              const Divider(height: 0.5, indent: 44, color: AppColors.divider),
              _buildTextField(
                controller: _portController,
                label: l10n.portLabel,
                hint: '18789',
                icon: Icons.tag,
                keyboardType: TextInputType.number,
                validator: (v) {
                  if (v == null || v.isEmpty) return l10n.pleaseEnterPort;
                  final port = int.tryParse(v);
                  if (port == null || port < 1 || port > 65535) return l10n.invalidPort;
                  return null;
                },
              ),
              const Divider(height: 0.5, indent: 44, color: AppColors.divider),
              _buildSwitchTile(
                icon: Icons.lock_outlined,
                title: l10n.encryptedConnection,
                subtitle: l10n.cloudServerRecommended,
                value: _useTLS,
                onChanged: (v) => setState(() => _useTLS = v),
              ),
            ]),

            const SizedBox(height: 20),

            _buildSectionHeader(l10n.authMethod),
            _buildCard([
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
                child: SegmentedButton<String>(
                  segments: [
                    ButtonSegment(
                      value: 'password',
                      label: Text(l10n.passwordLabel),
                      icon: const Icon(Icons.lock_outline, size: 16),
                    ),
                    ButtonSegment(
                      value: 'token',
                      label: Text(l10n.tokenLabel),
                      icon: const Icon(Icons.key_outlined, size: 16),
                    ),
                  ],
                  selected: {_authMode},
                  onSelectionChanged: (s) => setState(() => _authMode = s.first),
                  style: ButtonStyle(
                    visualDensity: VisualDensity.compact,
                    textStyle: WidgetStatePropertyAll(AppTextStyles.bodyMedium),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              if (_authMode == 'password') ...[
                _buildTextField(
                  controller: _passwordController,
                  label: l10n.passwordLabel,
                  hint: l10n.enterGatewayPassword,
                  icon: Icons.password_outlined,
                  obscureText: true,
                  validator: (v) =>
                      _authMode == 'password' && (v == null || v.isEmpty) ? l10n.pleaseEnterPassword : null,
                ),
                _buildHelpText(l10n.passwordHelp),
              ] else ...[
                _buildTextField(
                  controller: _tokenController,
                  label: l10n.authTokenLabel,
                  hint: l10n.getFromConfig,
                  icon: Icons.key_outlined,
                  obscureText: true,
                  validator: (v) =>
                      _authMode == 'token' && (v == null || v.isEmpty) ? l10n.pleaseEnterToken : null,
                ),
                _buildHelpText(l10n.tokenHelp),
              ],
            ]),

            const SizedBox(height: 24),

            if (_isTesting)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2.5),
                  ),
                ),
              )
            else if (_testSuccess)
              _buildResultBanner(
                icon: Icons.check_circle_outline,
                color: AppColors.online,
                title: l10n.connectionSuccess,
              )
            else if (_testError != null)
              _buildResultBanner(
                icon: Icons.error_outline,
                color: AppColors.error,
                title: l10n.connectionFailed,
                detail: _testErrorType != null
                    ? localizeGatewayError(l10n, _testErrorType!, _testErrorParams)
                    : _testError,
              ),

            const SizedBox(height: 12),

            OutlinedButton.icon(
              onPressed: _isTesting ? null : _testConnection,
              icon: const Icon(Icons.wifi_tethering, size: 18),
              label: Text(l10n.testConnection),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: _save,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.large),
                  ),
                ),
                child: Text(_isEditing ? l10n.save : l10n.addServer),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  // -- UI 构建辅助方法 --

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(title, style: AppTextStyles.caption),
    );
  }

  Widget _buildCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    String? hint,
    required IconData icon,
    bool obscureText = false,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: AppTextStyles.bodyMedium,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon, size: 20, color: AppColors.textSecondary),
        filled: false,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        labelStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
        hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.textTertiary),
        errorStyle: AppTextStyles.captionSmall.copyWith(color: AppColors.error),
      ),
      validator: validator,
    );
  }

  Widget _buildSwitchTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: SwitchListTile(
        secondary: Icon(icon, size: 20, color: AppColors.textSecondary),
        title: Text(title, style: AppTextStyles.bodyMedium),
        subtitle: subtitle != null
            ? Text(subtitle, style: AppTextStyles.caption)
            : null,
        value: value,
        onChanged: onChanged,
        activeColor: AppColors.primary,
        dense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }

  Widget _buildHelpText(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(44, 0, 16, 12),
      child: Text(text, style: AppTextStyles.caption),
    );
  }

  Widget _buildResultBanner({
    required IconData icon,
    required Color color,
    required String title,
    String? detail,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 18),
              const SizedBox(width: 8),
              Text(title, style: AppTextStyles.bodyMedium.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              )),
            ],
          ),
          if (detail != null) ...[
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Text(
                detail,
                style: AppTextStyles.caption.copyWith(color: color),
              ),
            ),
          ],
        ],
      ),
    );
  }

  // -- 业务逻辑 --

  Future<void> _testConnection() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isTesting = true;
      _testSuccess = false;
      _testError = null;
    });

    try {
      final config = _buildConfig();
      final client = GatewayClient(config);

      print('[ClawChat] Testing connection to ${config.wsUrl}');
      final result = await client.connect();

      setState(() {
        _testSuccess = result.success;
        _testError = result.error;
        _testErrorType = result.errorType;
        _testErrorParams = result.errorParams;
        _isTesting = false;
      });

      client.disconnect();
    } catch (e, stack) {
      print('[ClawChat] Test connection error: $e');
      print('[ClawChat] Stack: $stack');
      setState(() {
        _testError = e.toString();
        _isTesting = false;
      });
    }
  }

  void _save() {
    if (!_formKey.currentState!.validate()) return;

    final config = _buildConfig();

    if (_isEditing) {
      ref.read(serverListProvider.notifier).updateServer(widget.server!.id, config);
    } else {
      ref.read(serverListProvider.notifier).addServer(config);
    }

    final l10n = S.of(context);
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(_isEditing ? l10n.serverUpdated : l10n.serverAdded)),
    );
  }

  ServerConfig _buildConfig() {
    return ServerConfig(
      id: _serverId ?? const Uuid().v4(),
      name: _nameController.text.trim(),
      host: _hostController.text.trim(),
      port: int.parse(_portController.text.trim()),
      token: _tokenController.text.trim(),
      password: _passwordController.text.trim(),
      authMode: _authMode,
      useTLS: _useTLS,
      isDefault: widget.server?.isDefault ?? false,
    );
  }
}
