import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_theme.dart';
import '../models/server_config.dart';
import '../providers/connection_provider.dart';
import '../services/gateway_client.dart';
import '../widgets/message_bubble.dart';
import '../widgets/input_bar.dart';

// 使用 GatewayConnectionState 别名避免与 Flutter 的 ConnectionState 冲突
typedef ConnState = GatewayConnectionState;

/// 聊天页
class ChatPage extends ConsumerStatefulWidget {
  final ServerConfig server;

  const ChatPage({super.key, required this.server});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _connect();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _connect() {
    // 更新配置以确保使用最新的服务器配置
    final notifier = ref.read(connectionProvider(widget.server.id).notifier);
    notifier.updateConfig(widget.server);
    // 开始连接
    notifier.connect();
  }

  void _sendMessage(String text) {
    final connection = ref.read(connectionProvider(widget.server.id));
    if (connection == ConnState.connected) {
      ref.read(messageListProvider(widget.server.id).notifier).sendMessage(text);
      _scrollToBottom();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('未连接到服务器')),
      );
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final connectionState = ref.watch(connectionProvider(widget.server.id));
    final messages = ref.watch(messageListProvider(widget.server.id));

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => _showServerInfo(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('小虾', style: AppTextStyles.appBarTitle),
              Text(
                widget.server.displayAddress,
                style: AppTextStyles.appBarSubtitle,
              ),
            ],
          ),
        ),
        actions: [
          _buildConnectionStatus(connectionState),
          IconButton(
            icon: const Icon(Icons.more_horiz, size: 20),
            onPressed: () => _showOptions(context),
          ),
        ],
      ),
      body: Column(
        children: [
          // 连接状态提示
          if (connectionState == ConnState.connecting)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              color: AppColors.primaryLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 12,
                    height: 12,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  const SizedBox(width: 8),
                  Text('连接中...', style: AppTextStyles.caption.copyWith(color: AppColors.primary)),
                ],
              ),
            ),
          
          if (connectionState == ConnState.error)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: AppColors.error.withValues(alpha: 0.1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 14, color: AppColors.error),
                      const SizedBox(width: 8),
                      Text(
                        '连接失败',
                        style: AppTextStyles.caption.copyWith(color: AppColors.error),
                      ),
                      TextButton(
                        onPressed: () => ref.read(connectionProvider(widget.server.id).notifier).reconnect(),
                        child: const Text('重试'),
                      ),
                    ],
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      final error = ref.read(connectionProvider(widget.server.id).notifier).lastError;
                      if (error != null) {
                        return Text(
                          error,
                          style: AppTextStyles.captionSmall.copyWith(color: AppColors.error),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ],
              ),
            ),
          
          if (connectionState == ConnState.disconnected)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              color: AppColors.surfaceVariant,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.cloud_off_outlined, size: 14, color: AppColors.textSecondary),
                  const SizedBox(width: 8),
                  Text(
                    '未连接',
                    style: AppTextStyles.caption,
                  ),
                  TextButton(
                    onPressed: _connect,
                    child: const Text('连接'),
                  ),
                ],
              ),
            ),

          // 消息列表
          Expanded(
            child: messages.isEmpty
                ? _buildEmptyState()
                : ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return MessageBubble(message: messages[index]);
                    },
                  ),
          ),

          // 输入框
          InputBar(
            onSend: _sendMessage,
            isEnabled: connectionState == ConnState.connected,
          ),
        ],
      ),
    );
  }

  Widget _buildConnectionStatus(GatewayConnectionState state) {
    Color color;
    String tooltip;
    
    switch (state) {
      case GatewayConnectionState.connected:
        color = AppColors.online;
        tooltip = '已连接';
        break;
      case GatewayConnectionState.connecting:
        color = AppColors.warning;
        tooltip = '连接中';
        break;
      case GatewayConnectionState.error:
        color = AppColors.error;
        tooltip = '连接错误';
        break;
      default:
        color = AppColors.offline;
        tooltip = '未连接';
    }

    return Tooltip(
      message: tooltip,
      child: Container(
        width: 8,
        height: 8,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.chat_outlined,
                size: 32,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '开始聊天吧',
              style: AppTextStyles.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              '输入消息与小虾对话',
              style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildSuggestionChip('你好'),
                _buildSuggestionChip('帮我写代码'),
                _buildSuggestionChip('总结这篇文章'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuggestionChip(String text) {
    return ActionChip(
      label: Text(text, style: AppTextStyles.bodyMedium),
      backgroundColor: AppColors.surface,
      side: const BorderSide(color: AppColors.border, width: 0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.round),
      ),
      onPressed: () => _sendMessage(text),
    );
  }

  void _showServerInfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.server.name, style: AppTextStyles.headlineMedium),
              const SizedBox(height: 16),
              _buildInfoRow(Icons.link_outlined, '地址', widget.server.displayAddress),
              const SizedBox(height: 8),
              _buildInfoRow(
                widget.server.useTLS ? Icons.lock_outlined : Icons.lock_open_outlined,
                'TLS',
                widget.server.useTLS ? '已启用' : '未启用',
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('切换服务器'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.textSecondary),
        const SizedBox(width: 8),
        Text('$label: ', style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary)),
        Expanded(
          child: Text(value, style: AppTextStyles.bodyMedium),
        ),
      ],
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.delete_outline, color: AppColors.textSecondary),
                title: Text('清空聊天记录', style: AppTextStyles.bodyMedium),
                onTap: () {
                  Navigator.pop(context);
                  ref.read(messageListProvider(widget.server.id).notifier).clearHistory();
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined, color: AppColors.textSecondary),
                title: Text('服务器设置', style: AppTextStyles.bodyMedium),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
