# 聊天页键盘与滚动体验优化 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 优化聊天页键盘弹起/收起行为，并在 AI 流式输出时自动滚动跟随最新内容。

**Architecture:** 在 `ChatPage` 中引入 `_isPinnedToBottom` 标志，通过 `ScrollController` 监听滚动位置自动更新该标志；消息列表变化时若贴底则 `jumpTo(0)`；输入框获得焦点时无条件滚到底部。布局不变（`reverse: true` ListView + `resizeToAvoidBottomInset: true`）。

**Tech Stack:** Flutter, Riverpod, `ScrollController`, `WidgetsBinding.addPostFrameCallback`

---

## Task 1: 重构 `_ChatPageState` 滚动逻辑

**Files:**
- Modify: `lib/pages/chat_page.dart`

**当前代码位置参考（需要理解再修改）：**
- `_scrollController` 声明：约第 28 行
- `_scrollToBottom()`：约第 64-76 行（含 100ms delay，需替换）
- `onFocusChanged` 回调：约第 221-234 行（含 `p.pixels <= 20` 条件，需移除）
- `ListView.builder`：约第 203-214 行

**Step 1: 添加 `_isPinnedToBottom` 字段并注册 ScrollController 监听器**

在 `_ChatPageState` 的字段声明处（第 28 行附近）添加：

```dart
bool _isPinnedToBottom = true;
```

在 `initState()` 中，紧跟 `super.initState()` 之后添加：

```dart
_scrollController.addListener(_onScroll);
```

在 `dispose()` 中，紧跟 `_scrollController.dispose()` 之前添加：

```dart
_scrollController.removeListener(_onScroll);
```

新增方法（放在 `_connect()` 之前）：

```dart
void _onScroll() {
  if (!_scrollController.hasClients) return;
  final pixels = _scrollController.position.pixels;
  final pinned = pixels <= 50;
  if (pinned != _isPinnedToBottom) {
    setState(() => _isPinnedToBottom = pinned);
  }
}
```

**Step 2: 替换 `_scrollToBottom()` 为 `_jumpToBottom()`**

删除现有的 `_scrollToBottom()` 方法，替换为：

```dart
void _jumpToBottom() {
  if (_scrollController.hasClients) {
    _scrollController.jumpTo(0);
  }
}
```

**Step 3: 修改 `_sendMessage()` 中的滚动调用**

将 `_sendMessage()` 方法末尾的 `_scrollToBottom()` 调用替换为：

```dart
setState(() => _isPinnedToBottom = true);
WidgetsBinding.instance.addPostFrameCallback((_) => _jumpToBottom());
```

完整 `_sendMessage` 方法应为：

```dart
void _sendMessage(String text) {
  final connection = ref.read(connectionProvider(widget.server.id));
  if (connection == ConnState.connected) {
    ref.read(messageListProvider(widget.server.id).notifier).sendMessage(text);
    setState(() => _isPinnedToBottom = true);
    WidgetsBinding.instance.addPostFrameCallback((_) => _jumpToBottom());
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(S.of(context).notConnectedToServer)),
    );
  }
}
```

**Step 4: 修改 `onFocusChanged` 回调（移除 `p.pixels <= 20` 条件）**

找到 `build()` 中 `InputBar` 的 `onFocusChanged` 参数（约第 221-234 行），替换为：

```dart
onFocusChanged: (hasFocus) {
  if (hasFocus && _scrollController.hasClients && messages.isNotEmpty) {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }
},
```

**Step 5: 在 `build()` 中监听消息列表变化，实现 AI 流式跟随**

在 `build()` 方法中，已有：

```dart
final messages = ref.watch(messageListProvider(widget.server.id));
```

在这行**之后**添加：

```dart
if (_isPinnedToBottom && messages.isNotEmpty) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (_scrollController.hasClients && _isPinnedToBottom) {
      _scrollController.jumpTo(0);
    }
  });
}
```

**Step 6: 手动验证**

在模拟器或真机上运行 `flutter run`，验证以下场景：

| 场景 | 预期行为 |
|---|---|
| 点击输入框（键盘弹起） | 内容整体上移，最新消息可见 |
| 发送消息 | 立即跳到最新消息（无动画卡顿） |
| AI 流式输出中 | 自动跟随，无需手动下滑 |
| 上滑查看历史时 AI 仍在回复 | 不强制滚底，用户阅读不被打断 |
| 上滑后手动滑回底部 | 再次贴底，恢复自动跟随 |
| 上滑时键盘自动收起 | 向上拖列表即收起键盘（飞书同款） |
| 消息列表为空 | 无任何滚动操作，不报错 |

**Step 7: Commit**

```bash
git add lib/pages/chat_page.dart
git commit -m "feat: improve chat keyboard UX and AI streaming auto-scroll"
```

---

## 完成标准

- 键盘弹起时消息列表平滑上移，最新消息可见
- AI 流式输出时，若用户在底部则自动跟随；若用户上翻历史则不打断
- 上滑列表自动收起键盘
- 所有现有连接状态提示、空状态页、建议 Chip 功能正常
