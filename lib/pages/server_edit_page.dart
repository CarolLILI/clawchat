import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../constants/app_theme.dart';
import '../models/server_config.dart';
import '../providers/server_provider.dart';
import '../services/gateway_client.dart';

/// 添加/编辑服务器页
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
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? '编辑服务器' : '添加服务器'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: '服务器名称 *',
                hintText: '例如：腾讯云服务器',
                prefixIcon: Icon(Icons.label),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入服务器名称';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            const Text(
              '连接地址',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: 8),

            TextFormField(
              controller: _hostController,
              decoration: const InputDecoration(
                labelText: '服务器地址 *',
                hintText: '192.168.1.100 或 openclaw.example.com',
                prefixIcon: Icon(Icons.computer),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入服务器地址';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            TextFormField(
              controller: _portController,
              decoration: const InputDecoration(
                labelText: '端口',
                prefixIcon: Icon(Icons.settings_ethernet),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入端口';
                }
                final port = int.tryParse(value);
                if (port == null || port < 1 || port > 65535) {
                  return '请输入有效的端口号';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            SwitchListTile(
              title: const Text('使用加密连接 (WSS)'),
              subtitle: const Text('云服务器建议开启'),
              value: _useTLS,
              onChanged: (value) => setState(() => _useTLS = value),
            ),
            const Divider(),
            const SizedBox(height: 16),

            const Text(
              '认证方式',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'password',
                  label: Text('密码登录'),
                  icon: Icon(Icons.lock),
                ),
                ButtonSegment(
                  value: 'token',
                  label: Text('Token'),
                  icon: Icon(Icons.key),
                ),
              ],
              selected: {_authMode},
              onSelectionChanged: (selection) {
                setState(() => _authMode = selection.first);
              },
            ),
            const SizedBox(height: 16),

            if (_authMode == 'password') ...[
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: '密码 *',
                  hintText: '输入 Gateway 密码',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  if (_authMode == 'password' && (value == null || value.isEmpty)) {
                    return '请输入密码';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              const Text(
                '密码在服务器 ~/.openclaw/openclaw.json 的 gateway.auth.password 中',
                style: AppTextStyles.caption,
              ),
            ] else ...[
              TextFormField(
                controller: _tokenController,
                decoration: const InputDecoration(
                  labelText: 'Auth Token *',
                  hintText: '从 OpenClaw 配置中获取',
                  prefixIcon: Icon(Icons.key),
                ),
                obscureText: true,
                validator: (value) {
                  if (_authMode == 'token' && (value == null || value.isEmpty)) {
                    return '请输入 Auth Token';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              const Text(
                'Token 在 ~/.openclaw/openclaw.json 中，gateway.auth.token',
                style: AppTextStyles.caption,
              ),
            ],
            const SizedBox(height: 24),

            if (_isTesting)
              const Center(child: CircularProgressIndicator())
            else if (_testSuccess)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.online.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.check_circle, color: AppColors.online),
                    SizedBox(width: 8),
                    Text('连接成功', style: TextStyle(color: AppColors.online)),
                  ],
                ),
              )
            else if (_testError != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.error.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.error, color: AppColors.error),
                        const SizedBox(width: 8),
                        const Text('连接失败', style: TextStyle(
                          color: AppColors.error,
                          fontWeight: FontWeight.bold,
                        )),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _testError!,
                      style: const TextStyle(color: AppColors.error, fontSize: 13),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 16),

            OutlinedButton.icon(
              onPressed: _isTesting ? null : _testConnection,
              icon: const Icon(Icons.network_check),
              label: const Text('测试连接'),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: _save,
                child: Text(_isEditing ? '保存' : '添加'),
              ),
            ),
          ],
        ),
      ),
    );
  }

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

    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(_isEditing ? '服务器已更新' : '服务器已添加')),
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
