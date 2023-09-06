import 'package:chat_app/features/on_boarding.dart/presentation/views/on_boarding_view.dart';
import 'package:chat_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "SplashView": (context) => const SplashView(),
        "OnBoardingView": (context) => const OnBoardingView(),
      },
      initialRoute: "SplashView",
    );
  }
}
