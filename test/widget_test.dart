// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tms_app/UI/login.dart';

import 'package:tms_app/main.dart';
import 'package:tms_app/my_widget.dart';

void main() {
  testWidgets('Main Screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    final app = find.byType(MaterialApp);
    final login = find.byType(Login);

    expect(app, findsOneWidget);
    expect(login, findsOneWidget);
  });

  testWidgets('Login is displaying right', (widgetTester) async {
    await widgetTester.pumpWidget( const MaterialApp(home: Scaffold(body:
    Login(),),), );
    await widgetTester.pumpAndSettle();

    final textFormField = find.byType(TextFormField);
    expect(textFormField, findsNWidgets(2));
  });

  testWidgets('My widget has a title and message', (widgetTester) async{
      await widgetTester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

      //Create finders
      final titleFinder = find.text('T');
      final messageFinder = find.text('M');
      
      expect(titleFinder, findsOneWidget);
      expect(messageFinder, findsOneWidget);
  });
}
