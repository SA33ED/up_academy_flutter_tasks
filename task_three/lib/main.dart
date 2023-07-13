// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_two/screens/business_card.dart';
import 'package:task_two/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        BusinessCard.id: (context) =>  BusinessCard(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
