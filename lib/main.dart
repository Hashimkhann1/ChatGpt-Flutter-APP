import 'package:chatgpt/res/constant.dart';
import 'package:chatgpt/view/chat_view/chat_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Gpt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scafoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: cardColor
        ),
      ),
      home: ChatView()
    );
  }
}
