// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task_two/screens/business_card.dart';

import '../constant/colors.dart';
import '../widgets/custom_login_btn.dart';
import '../widgets/custom_login_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  static String id = 'loginPage';
  String? email;
  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              LoginTextField(
                isObscureText: false,
                hint: 'Email',
                onChanged: (data) {
                  email = data;
                },
              ),
              LoginTextField(
                isObscureText: true,
                hint: 'Password',
                onChanged: (data) {
                  password = data;
                },
              ),
              LoginBtn(
                text: "LOGIN",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    if (email != "flutter@gmail.com" ||
                        password != "upacademy") {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Wrong Email or Password"),
                      ));
                    } else {
                      Navigator.pushNamed(context, BusinessCard.id);
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
