import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../constants/app_theme.dart';
import '../models/server_config.dart';
import '../providers/server_provider.dart';
import '../widgets/server_card.dart';
import 'server_edit_page.dart';
import 'chat_page.dart';

/// 服务器列表页（首页）
class ServerListPage extends ConsumerStatefulWidget {
  const ServerListPage({super.key});

  @override
  ConsumerState<ServerListPage> createState() => _ServerListPageState();
}

class _ServerListPageState extends ConsumerState<ServerListPage> {
  @override
  Widget build(BuildContext context) {
    final servers = ref.watch(serverListProvider);
    final defaultServer = ref.watch(defaultServerProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('ClawChat'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.file_upload),
            tooltip: '导出配置',
            onPressed: _exportConfig,
          ),
          IconButton(
            icon: const Icon(Icons.file_download),
            tooltip: '导入配置',
            onPressed: () => _importConfig(),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: servers.isEmpty
          ? _buildEmptyState()
          : _buildServerList(servers, defaultServer),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addServer,
        icon: const Icon(Icons.add),
        label: const Text('添加服务器'),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.computer,
            size: 80,
            color: AppColors.textSecondary,
          ),
          const SizedBox(height: 24),
          const Text(
            '欢迎使用 ClawChat',
            style: AppTextStyles.headlineLarge,
          ),
          const SizedBox(height: 8),
          const Text(
            '添加 OpenClaw 服务器开始聊天',
            style: AppTextStyles.bodyMedium,
          ),
          const SizedBox(height: 32),
          ElevatedButton.icon(
            onPressed: _addServer,
            icon: const Icon(Icons.add),
            label: const Text('添加服务器'),
          ),
        ],
      ),
    );
  }

  Widget _buildServerList(
    List<ServerConfig> servers,
    ServerConfig? defaultServer,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: servers.length,
      itemBuilder: (context, index) {
        final server = servers[index];
        return ServerCard(
          config: server,
          isDefault: server.id == defaultServer?.id,
          onTap: () => _openChat(server),
          onEdit: () => _editServer(server),
          onDelete: () => _deleteServer(server),
        );
      },
    );
  }

  void _addServer() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ServerEditPage(),
      ),
    );
  }

  void _editServer(ServerConfig server) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ServerEditPage(server: server),
      ),
    );
  }

  void _deleteServer(ServerConfig server) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('确认删除'),
        content: Text('确定要删除 "${server.name}" 吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              ref.read(serverListProvider.notifier).deleteServer(server.id);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('服务器已删除')),
              );
            },
            child: const Text('删除', style: TextStyle(color: AppColors.error)),
          ),
        ],
      ),
    );
  }

  void _openChat(ServerConfig server) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(server: server),
      ),
    );
  }

  Future<void> _exportConfig() async {
    try {
      final json = ref.read(serverListProvider.notifier).exportConfig();
      
      // 保存到临时文件
      final tempDir = await getTemporaryDirectory();
      final fileName = 'clawchat_config_${DateTime.now().millisecondsSinceEpoch}.json';
      final filePath = path.join(tempDir.path, fileName);
      final file = File(filePath);
      await file.writeAsString(json);
      
      // 分享文件
      await Share.shareXFiles(
        [XFile(filePath)],
        subject: 'ClawChat 配置备份',
      );
      
      // 清理临时文件
      await file.delete();
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('配置已导出')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('导出失败: $e')),
        );
      }
    }
  }

  Future<void> _importConfig() async {
    try {
      // 选择文件
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
        withData: true,
      );
      
      if (result == null || result.files.isEmpty) return;
      
      final file = result.files.first;
      if (file.bytes == null) {
        throw Exception('无法读取文件');
      }
      
      final jsonString = String.fromCharCodes(file.bytes!);
      
      // 确认导入
      final confirm = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('导入配置'),
          content: const Text('导入配置将合并到现有服务器列表中，是否继续？'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('取消'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('导入'),
            ),
          ],
        ),
      );
      
      if (confirm != true) return;
      
      // 导入
      await ref.read(serverListProvider.notifier).importConfig(jsonString);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('配置导入成功')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('导入失败: $e')),
        );
      }
    }
  }
}
