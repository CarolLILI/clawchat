# 聊天页体验优化 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 键盘弹起时聊天列表随之上移、最新消息保持可见；采用 reverse ListView 与焦点时智能滚到底。

**Architecture:** ChatPage 保持 Column + Expanded(ListView) + InputBar；ListView 改为 reverse: true 并反转 index 映射；滚动「底部」= position 0；输入框聚焦时在底部则平滑滚到 0。

**Tech Stack:** Flutter 3.x, Dart 3.x, Riverpod, Material 3

---

## Task 1: Scaffold 与 ListView 改为 reverse + index 映射

**Files:**
- Modify: `lib/pages/chat_page.dart`

**Step 1: 设置 Scaffold.resizeToAvoidBottomInset**

在 `Scaffold(` 后增加参数：
```dart
resizeToAvoidBottomInset: true,
```

**Step 2: ListView.builder 改为 reverse 并反转 index**

将现有：
```dart
ListView.builder(
  controller: _scrollController,
  padding: const EdgeInsets.symmetric(vertical: 8),
  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
  itemCount: messages.length,
  itemBuilder: (context, index) {
    return MessageBubble(message: messages[index]);
  },
)
```

改为：
```dart
ListView.builder(
  controller: _scrollController,
  reverse: true,
  padding: const EdgeInsets.only(top: 8, bottom: 8),
  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
  itemCount: messages.length,
  itemBuilder: (context, index) {
    final message = messages[messages.length - 1 - index];
    return MessageBubble(message: message);
  },
)
```

**Step 3: 验证**

运行 `flutter run`，进入聊天页，确认最新消息在视觉底部、向上滚动可看历史。无报错。

**Step 4: Commit**

```bash
git add lib/pages/chat_page.dart
git commit -m "refactor(chat): use reverse ListView and explicit resizeToAvoidBottomInset"
```

---

## Task 2: 滚动到底部逻辑改为 position 0

**Files:**
- Modify: `lib/pages/chat_page.dart`

**Step 1: 修改 _scrollToBottom 实现**

将 `_scrollToBottom` 中：
```dart
_scrollController.animateTo(
  _scrollController.position.maxScrollExtent,
  ...
);
```

改为（reverse 下底部为 0）：
```dart
_scrollController.animateTo(
  0,
  duration: const Duration(milliseconds: 300),
  curve: Curves.easeOut,
);
```

**Step 2: 验证**

发送一条新消息，列表应平滑滚到最新消息（视觉底部）。无报错。

**Step 3: Commit**

```bash
git add lib/pages/chat_page.dart
git commit -m "fix(chat): scroll to bottom uses position 0 for reverse ListView"
```

---

## Task 3: 输入框聚焦时在底部则滚到 0

**Files:**
- Modify: `lib/widgets/input_bar.dart` — 暴露 FocusNode 或 onFocus 回调
- Modify: `lib/pages/chat_page.dart` — 监听焦点并在底部时滚到 0

**Step 1: InputBar 支持焦点回调**

在 `lib/widgets/input_bar.dart` 中：
- 为 `InputBar` 增加可选参数 `ValueChanged<bool>? onFocusChanged`（或 `VoidCallback? onFocused`）。
- 在 `_focusNode` 上添加监听：`_focusNode.addListener(() { widget.onFocusChanged?.call(_focusNode.hasFocus); });`（在 initState 中添加，dispose 前移除）。

**Step 2: ChatPage 中监听焦点并滚动**

在 `lib/pages/chat_page.dart` 中：
- 给 `InputBar` 传入 `onFocusChanged: (hasFocus) { if (hasFocus && _scrollController.hasClients) { final p = _scrollController.position; if (p.pixels <= 20) _scrollController.animateTo(0, duration: const Duration(milliseconds: 200), curve: Curves.easeOut); } }`（或等价逻辑：仅在已接近底部时滚到 0）。

**Step 3: 验证**

进入聊天页，上滑一点再点击输入框，不应强制滚到底；在底部点击输入框，应轻微滚到 0 使最后一条完全露出。键盘弹起时列表随之上移。

**Step 4: Commit**

```bash
git add lib/widgets/input_bar.dart lib/pages/chat_page.dart
git commit -m "feat(chat): scroll to bottom when input focused and list already at bottom"
```

---

## Task 4: 列表底部 padding

**Files:**
- Modify: `lib/pages/chat_page.dart`

**Step 1: 增加 ListView padding bottom**

将 ListView 的 `padding: const EdgeInsets.only(top: 8, bottom: 8)` 改为 `padding: const EdgeInsets.only(top: 8, bottom: 16)`（或 12），避免最后一条消息贴输入栏过紧。

**Step 2: 验证**

视觉上最后一条消息与输入栏之间有合适间距。

**Step 3: Commit**

```bash
git add lib/pages/chat_page.dart
git commit -m "style(chat): increase list bottom padding above input bar"
```

---

## Task 5: 空状态与边界检查

**Files:**
- Modify: `lib/pages/chat_page.dart`（仅确认逻辑）

**Step 1: 确认 _scrollToBottom 在空列表不执行**

当前实现已有 `if (_scrollController.hasClients)`，reverse 下 `hasClients` 在空列表仍为 true；若希望空列表完全不滚动，可在 `_scrollToBottom` 开头增加 `if (messages.isEmpty) return;`（需传入或读取 messages）。若 ChatPage 内可直接用 ref.read(messageListProvider(widget.server.id))，则加此判断。

**Step 2: 确认空状态居中**

保持 `_buildEmptyState()` 不变；若 reverse 导致空状态位置异常，再微调 padding。当前设计为不改空状态，仅做一次视觉确认。

**Step 3: Commit（若有改动）**

仅当增加空列表判断时提交：
```bash
git add lib/pages/chat_page.dart
git commit -m "fix(chat): skip scroll to bottom when message list is empty"
```

---

## Execution Handoff

Plan complete and saved to `docs/plans/2025-02-24-chat-page-ux-optimization.md`.

**Two execution options:**

1. **Subagent-Driven (this session)** — I dispatch a fresh subagent per task, review between tasks, fast iteration.
2. **Parallel Session (separate)** — Open a new session with executing-plans for batch execution with checkpoints.

Which approach?
