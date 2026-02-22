// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can tap and scroll
// gestures. For example, you can use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:clawchat/main.dart';

void main() {
  testWidgets('App starts smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ClawChatApp());

    // Verify that our app starts with server list page
    expect(find.text('ClawChat'), findsOneWidget);
    expect(find.text('添加 OpenClaw 服务器开始聊天'), findsOneWidget);
  });
}
