import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../l10n/app_localizations.dart';

import '../../constants/app_theme.dart';
import '../../models/server_config.dart';

class ServerCard extends StatelessWidget {
  final ServerConfig config;
  final bool isConnected;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final bool isDefault;

  const ServerCard({
    super.key,
    required this.config,
    this.isConnected = false,
    this.onTap,
    this.onEdit,
    this.onDelete,
    this.isDefault = false,
  });

  Color _avatarColor(String name) {
    final colors = [
      const Color(0xFF3370FF),
      const Color(0xFF7B67EE),
      const Color(0xFF00B42A),
      const Color(0xFFFF7D00),
      const Color(0xFF14C9C9),
      const Color(0xFFF54A45),
    ];
    final index = name.isEmpty ? 0 : name.codeUnitAt(0) % colors.length;
    return colors[index];
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // Avatar with status indicator
            _buildAvatar(),
            const SizedBox(width: 12),

            // Server info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          config.name,
                          style: AppTextStyles.titleLarge,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (isDefault)
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                          decoration: BoxDecoration(
                            color: AppColors.primaryLight,
                            borderRadius: BorderRadius.circular(AppRadius.small),
                          ),
                          child: Text(
                            S.of(context).defaultBadge,
                            style: AppTextStyles.captionSmall.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        config.useTLS ? Icons.lock_outlined : Icons.lock_open_outlined,
                        size: 12,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          config.displayAddress,
                          style: AppTextStyles.caption,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (config.lastConnected != null)
                        Text(
                          _formatTime(context, config.lastConnected!),
                          style: AppTextStyles.captionSmall,
                        ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 4),

            // Actions menu
            SizedBox(
              width: 32,
              height: 32,
              child: PopupMenuButton<String>(
                padding: EdgeInsets.zero,
                iconSize: 18,
                icon: const Icon(
                  Icons.more_horiz,
                  color: AppColors.textSecondary,
                ),
                onSelected: (value) {
                  switch (value) {
                    case 'copy':
                      Clipboard.setData(ClipboardData(text: config.displayAddress));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(S.of(context).addressCopied)),
                      );
                      break;
                    case 'edit':
                      onEdit?.call();
                      break;
                    case 'delete':
                      onDelete?.call();
                      break;
                  }
                },
                itemBuilder: (context) {
                  final l10n = S.of(context);
                  return [
                    PopupMenuItem(
                      value: 'copy',
                      child: Row(
                        children: [
                          const Icon(Icons.copy_outlined, size: 18, color: AppColors.textSecondary),
                          const SizedBox(width: 10),
                          Text(l10n.copyAddress, style: AppTextStyles.bodyMedium),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'edit',
                      child: Row(
                        children: [
                          const Icon(Icons.edit_outlined, size: 18, color: AppColors.textSecondary),
                          const SizedBox(width: 10),
                          Text(l10n.edit, style: AppTextStyles.bodyMedium),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Row(
                        children: [
                          const Icon(Icons.delete_outline, size: 18, color: AppColors.error),
                          const SizedBox(width: 10),
                          Text(l10n.delete, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.error)),
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    final color = _avatarColor(config.name);
    final initial = config.name.isEmpty ? 'S' : config.name.characters.first.toUpperCase();

    return SizedBox(
      width: 44,
      height: 44,
      child: Stack(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(AppRadius.large),
            ),
            child: Center(
              child: Text(
                initial,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: isConnected ? AppColors.online : AppColors.offline,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.surface, width: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(BuildContext context, DateTime time) {
    final l10n = S.of(context);
    final now = DateTime.now();
    final diff = now.difference(time);

    if (diff.inMinutes < 1) return l10n.justNow;
    if (diff.inHours < 1) return l10n.minutesAgo(diff.inMinutes);
    if (diff.inDays < 1) return l10n.hoursAgo(diff.inHours);
    if (diff.inDays < 7) return l10n.daysAgo(diff.inDays);
    return '${time.month}/${time.day}';
  }
}
