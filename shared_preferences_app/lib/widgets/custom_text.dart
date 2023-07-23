
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.title,
    this.value,
  });
  String title;
  String? value;
  @override
  Widget build(BuildContext context) {
    return Text(
      value == null ? "$title : " : "$title : $value",
      style: const TextStyle(fontSize: 24),
    );
  }
}
