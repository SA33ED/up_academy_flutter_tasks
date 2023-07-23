// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.title,
  });

  String title;
  String? input;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          label: Text(title),
          labelStyle: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
