// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hint,
    this.label,
    this.textInputType,
    this.suffixIcon,
    this.obscureText,
    this.readOnly,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.controller,
  });

  bool? obscureText;
  bool? readOnly;
  String? hint;
  Widget? label;
  Widget? suffixIcon;
  void Function(String)? onChanged;
  void Function(String)? onSubmitted;
  String? Function(String?)? validator;
  TextInputType? textInputType;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            fillColor: const Color(0xffF7F7F7),
            filled: true,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffF7F7F7)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffF7F7F7)),
            ),
            hintText: hint,
            label: label,
            suffixIcon: suffixIcon,
          ),
          keyboardType: textInputType,
          onChanged: onChanged,
          onFieldSubmitted: onSubmitted,
          obscureText: obscureText ?? false,
          readOnly: readOnly ?? false,
        )
      ],
    );
  }
}
