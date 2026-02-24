# 聊天页键盘与滚动体验优化 — 设计文档

**日期:** 2026-02-24  
**状态:** 已通过  
**方案:** 方案三（飞书标准布局 + AI 流式输出实时跟随）

---

## 1. 目标与范围

- **主要目标:**
  1. 键盘弹起时聊天内容统一上移，最新消息始终可见
  2. AI 流式输出时自动跟随滚动，用户无需手动下拉
  3. 上滑列表时键盘自动收起（参考飞书）
- **范围:** 仅改动 `ChatPage`（`chat_page.dart`），`InputBar` 无需改动
- **不在范围内:** 新消息浮动按钮（留作后续迭代）

---

## 2. 整体布局与键盘行为

### 布局结构（不变）

```
Scaffold(resizeToAvoidBottomInset: true)
├── AppBar
└── body: Column
    ├── 连接状态条（按需显示）
    ├── Expanded → ListView.builder(reverse: true)
    └── InputBar
```

`reverse: true` 使 index 0 = 最新消息 = 视觉底部。键盘弹起时 Scaffold 收缩 body，InputBar 自然上移，ListView 可视区域缩小但始终展示最新消息，无需额外计算键盘高度。

### 键盘弹起时滚动

- 输入框获得焦点时：**无条件** `animateTo(0, duration: 250ms, curve: Curves.easeOut)`
- 移除现有 `p.pixels <= 20` 的限制条件（避免用户翻历史后再点输入框无法回到底部）

### 键盘收起

保持 `keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag`，上滑列表即收起键盘。

---

## 3. 发送消息 & AI 流式输出自动跟随

### "贴底" 标志

引入 `bool _isPinnedToBottom = true`，控制是否在消息更新后自动滚到底部。

| 事件 | `_isPinnedToBottom` 变化 | 滚动行为 |
|---|---|---|
| 用户发送消息 | 强制设为 `true` | `jumpTo(0)` |
| AI 流式 token 到来（列表 rebuild） | 读取当前值 | 若为 `true` → `jumpTo(0)` |
| 用户手动上滑（pixels > 50） | 设为 `false` | 不干预 |
| 用户手动滑回底部（pixels ≤ 50） | 设为 `true` | 不滚动（已在底） |

### 实现要点

1. **ScrollController 监听器**：在 `initState` 中注册，检测 `_scrollController.position.pixels`，超过阈值 50px 则置 `_isPinnedToBottom = false`，回到底部则置 `true`。

2. **消息列表变化监听**：在 `build()` 中通过 `ref.listen(messageListProvider(...))` 或 `didChangeDependencies` 监听消息列表变化；每次变化后在 `addPostFrameCallback` 中检查 `_isPinnedToBottom`，若为 `true` 则 `jumpTo(0)`。

3. **发送时**：`_sendMessage` 中调用后立即 `jumpTo(0)` 并设 `_isPinnedToBottom = true`（不用 `animateTo`，避免动画期间 AI 首 token 二次跳动）。

### 为什么用 `jumpTo` 而非 `animateTo`

- 发送消息是**用户主动操作**，瞬间定位更直接
- AI 流式更新频率高（每个 token），动画会相互叠加造成卡顿；`jumpTo` 是幂等的，高频调用无副作用

---

## 4. 边界处理

| 场景 | 处理 |
|---|---|
| 消息列表为空 | 不执行任何滚动逻辑 |
| 连接断开，AI 不再响应 | 保持 `_isPinnedToBottom` 最后状态，不重置 |
| 用户翻历史时收到新 AI token | 不强制滚底（`_isPinnedToBottom = false`） |
| 快速连续发送多条 | `jumpTo(0)` 幂等，多次调用无副作用 |

---

## 5. 修改文件清单

| 文件 | 改动类型 | 说明 |
|---|---|---|
| `lib/pages/chat_page.dart` | 修改 | 贴底标志、ScrollController 监听、消息变化监听、焦点滚动逻辑 |
| `lib/widgets/input_bar.dart` | **不改动** | 现有接口满足需求 |

---

## 6. 后续迭代（本次不实现）

- 当 `_isPinnedToBottom = false` 且有新消息时，右下角显示 "↓ 新消息" 浮动按钮，点击后回到底部
