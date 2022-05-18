import 'package:flutter/material.dart';
import 'package:messenger/Screens/Sign-Up.dart';
import 'package:messenger/Screens/chat_screen.dart';
import 'package:messenger/Screens/welcome_screen.dart';
import 'package:messenger/Utils/Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ChatsScreen(),
      ),
    );
  }
}
