// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppBarOption extends StatelessWidget {
  AppBarOption({super.key, required this.text,required this.onTap});
  String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
