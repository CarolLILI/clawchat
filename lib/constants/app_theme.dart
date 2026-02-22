import 'package:flutter/material.dart';

/// 飞书风格配色
class AppColors {
  // 主色
  static const Color primary = Color(0xFF3370FF);
  static const Color primaryDark = Color(0xFF2858CC);
  static const Color primaryLight = Color(0xFFE8F1FF);

  // 背景
  static const Color background = Color(0xFFF5F6F7);
  static const Color surface = Colors.white;
  static const Color surfaceVariant = Color(0xFFF2F3F5);

  // 消息气泡
  static const Color userBubble = Color(0xFF3370FF);
  static const Color aiBubble = Colors.white;
  static const Color systemBubble = Color(0xFFF2F3F5);

  // 文字
  static const Color textPrimary = Color(0xFF1F2329);
  static const Color textSecondary = Color(0xFF8F959E);
  static const Color textOnPrimary = Colors.white;

  // 状态
  static const Color online = Color(0xFF00B42A);
  static const Color offline = Color(0xFF8F959E);
  static const Color error = Color(0xFFF54A45);
  static const Color warning = Color(0xFFFF7D00);

  // 边框
  static const Color border = Color(0xFFDEE0E3);
}

/// 文本样式
class AppTextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );
}

/// 圆角
class AppRadius {
  static const double small = 4;
  static const double medium = 8;
  static const double large = 12;
  static const double xlarge = 16;
  static const Radius messageRadius = Radius.circular(8);
}

/// 间距
class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
}
