import 'package:flutter/material.dart';
import 'package:session_one/screens/chat_widget.dart';
import 'package:session_one/screens/interactive_widget.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'chatWidget': (context) => const ChatWidget(),
        'interactiveWidget': (context) => const InteractiveWidgets()
      },
      initialRoute: "interactiveWidget",
    );
  }
}
