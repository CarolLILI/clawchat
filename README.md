# ClawChat

OpenClaw Gateway 的 Flutter 聊天客户端

## 功能特性

- ✅ 手动添加 OpenClaw 服务器（IP/域名 + Token）
- ✅ 多服务器管理，一键切换
- ✅ WebSocket 实时聊天
- ✅ 本地消息历史存储
- ✅ 配置导入/导出备份
- ✅ 支持局域网直连和云端服务器
- ✅ 飞书风格 UI 设计

## 项目结构

```
lib/
├── main.dart                      # 应用入口
├── constants/
│   └── app_theme.dart             # 主题配色
├── models/
│   ├── server_config.dart         # 服务器配置模型
│   └── message.dart               # 消息模型
├── providers/
│   ├── server_provider.dart       # 服务器状态管理
│   └── connection_provider.dart   # 连接和消息管理
├── services/
│   ├── gateway_client.dart        # WebSocket 客户端
│   └── storage_service.dart       # 本地存储服务
├── pages/
│   ├── server_list_page.dart      # 服务器列表（首页）
│   ├── server_edit_page.dart      # 添加/编辑服务器
│   └── chat_page.dart             # 聊天界面
└── widgets/
    ├── server_card.dart           # 服务器卡片
    ├── message_bubble.dart        # 消息气泡
    └── input_bar.dart             # 底部输入栏
```

## 开发环境

- Flutter 3.x
- Dart 3.x

## 安装依赖

```bash
cd clawchat
flutter pub get
```

## 运行

```bash
# 调试运行
flutter run

# 构建 Android
flutter build apk

# 构建 iOS（需要 Mac + Xcode）
flutter build ios
```

## 使用说明

### 1. 添加服务器

打开 App → 点击"添加服务器" → 填写：
- **名称**：自定义显示名称
- **地址**：OpenClaw Gateway 的 IP 或域名
- **端口**：默认 18789
- **Token**：从 `~/.openclaw/openclaw.json` 获取 `gateway.auth.token`

### 2. 连接

添加后点击"测试连接"确保配置正确，然后点击卡片进入聊天。

### 3. 配置迁移

- **导出**：服务器列表页 → 导出图标 → 保存配置文件
- **导入**：服务器列表页 → 导入图标 → 选择配置文件

## 配色

| 用途 | 颜色 |
|------|------|
| 主色 | #3370FF |
| 用户消息 | #3370FF（蓝底白字）|
| AI 消息 | #FFFFFF（白底黑字）|
| 背景 | #F5F6F7 |

## 技术栈

- **状态管理**：Riverpod
- **网络**：web_socket_channel
- **存储**：Hive
- **UI**：Material 3

---

## 开发成本统计

### 开发时间
- **总计**：约 6-8 小时
- **架构设计**：1 小时
- **UI 开发**：2 小时
- **WebSocket 连接逻辑**：3 小时
- **调试与修复**：2 小时

### AI 使用费用

| AI 服务 | 用途 | 预估费用 |
|---------|------|----------|
| **Kimi AI (Moonshot)** | 代码生成、架构设计、文档编写 | ¥ 0（使用免费额度）|
| **Claude Code** | 复杂逻辑调试、错误修复、代码重构 | $ 0（使用已有订阅）|
| **总计** | | **¥ 0 / $ 0** |

> 注：实际开发中主要使用了 OpenClaw 内置的 AI 助手（Kimi K2.5）和 Claude Code 进行开发，由于使用现有订阅和免费额度，本次开发的直接 AI 使用成本为 0。

### 人力成本估算

按市场 Flutter 开发工程师时薪 ¥200-400 计算：
- **保守估计**：6 小时 × ¥200 = **¥1,200**
- **市场价位**：6 小时 × ¥400 = **¥2,400**

### 总成本

| 项目 | 费用 |
|------|------|
| AI 使用 | ¥0 |
| 人力成本 | ¥1,200 - ¥2,400 |
| **总计** | **¥1,200 - ¥2,400** |

---

## 致谢

感谢以下工具和平台对本项目的支持：

- **[OpenClaw](https://github.com/openclaw/openclaw)** - 提供 Gateway WebSocket 协议和开发环境
- **[Flutter](https://flutter.dev)** - 跨平台 UI 框架
- **[Riverpod](https://riverpod.dev)** - 状态管理解决方案
- **[Hive](https://hivedb.dev)** - 轻量级本地数据库
- **[Moonshot AI](https://moonshot.cn)** (Kimi) - AI 编程助手
- **[Claude Code](https://claude.ai)** - AI 开发助手
- **[Feishu](https://feishu.cn)** - UI 设计灵感来源

---

## 联系方式

如有问题或建议，欢迎联系：

📧 **邮箱**：aoliao2022@gmail.com

🐙 **GitHub**：[https://github.com/CarolLILI](https://github.com/CarolLILI)

---

## License

MIT

---

*本项目由 AI 辅助开发，是人类与 AI 协作的成果。*
