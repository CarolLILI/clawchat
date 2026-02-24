# 聊天页体验优化 — 设计文档

**日期:** 2025-02-24  
**状态:** 已通过

---

## 1. 目标与范围

- **主要目标:** 点击输入框、键盘弹起时，背后聊天列表能「跟着往上移」，不被键盘挡住，且最新消息保持可见。
- **次要目标:** 整体聊天页体验更顺（键盘收起方式、滚动与焦点关系一致）。
- **范围:** 仅限聊天页布局与键盘联动（ChatPage、InputBar、列表滚动逻辑），不引入新功能（如多会话、搜索）。

## 2. 键盘与布局行为

- **Scaffold:** 显式设置 `resizeToAvoidBottomInset: true`（与默认一致，便于后续若有全屏页再区分）。
- **输入栏:** 继续放在 body 底部；不单独用 SafeArea 包键盘高度，由 Scaffold 收缩 body 后输入栏自然上移；若某平台需要，可用 `MediaQuery.viewInsets.bottom` 仅做额外 padding，避免输入框被挡。
- **列表:** 使用 **reverse ListView**（见下节），body 因键盘变矮时列表可视区域自然上移，即「背后的聊天列表跟着往上移」。

## 3. 列表结构改为 reverse

- 将当前 `ListView.builder` 设为 `reverse: true`。
- **数据与 index 映射:** 保持 `messages` 顺序不变（0 = 最早，length-1 = 最新）。`itemBuilder(context, index)` 显示 `messages[messages.length - 1 - index]`（即第一个可见 item 对应最新一条）。
- **滚动逻辑:** 「滚到底部」= 滚到 scroll position 0（reverse 下 0 即逻辑底部）。新消息到达后若需始终贴底，可 `scrollController.animateTo(0, ...)` 或 `jumpTo(0)`。连接状态条仍在 Column 顶部，列表用 Expanded + reverse ListView，结构不变，仅 ListView 改为 reverse 并改 index 映射。

## 4. 输入框焦点与滚动（方案 C 细节）

- 输入框获得焦点时：若当前已在底部（例如 position.pixels <= 某阈值），则做一次短动画滚到 0，保证最后一条消息完全露出；若用户已上滑看历史，则不自动滚到底，避免打断阅读。
- 保留 `keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag`，下滑列表即收起键盘。

## 5. 其他体验细节（可选）

- 列表底部 padding：给 ListView 的 padding 增加 `bottom: 8`（或略大），避免最后一条消息贴输入栏过紧。
- 空状态：保持当前居中空状态；若 reverse 导致空状态视觉需微调再单独调。

## 6. 错误与边界

- 无网络/连接失败时仍显示顶部连接条 + 下方列表 + 底部输入栏；输入栏禁用发送逻辑不变。
- 消息列表为空时不执行「滚到底部」逻辑；有消息且焦点在输入框时再考虑自动滚到底。
