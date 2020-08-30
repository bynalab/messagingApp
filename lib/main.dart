import 'package:flutter/material.dart';
import 'package:messaging_app/screens/chat.dart';
import 'package:messaging_app/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
