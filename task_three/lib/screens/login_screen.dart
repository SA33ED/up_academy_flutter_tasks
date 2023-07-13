// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task_two/screens/business_card.dart';

import '../constant/colors.dart';
import '../widgets/custom_login_btn.dart';
import '../widgets/custom_login_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  static String id = 'loginPage';
  String? name;
  String? title;
  String? phone;
  String? email;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
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
                    hint: "Name",
                    onChanged: (data) {
                      name = data;
                    },
                  ),
                  LoginTextField(
                    isObscureText: false,
                    hint: "Title",
                    onChanged: (data) {
                      title = data;
                    },
                  ),
                  LoginTextField(
                    isObscureText: false,
                    hint: 'Email',
                    onChanged: (data) {
                      email = data;
                    },
                  ),
                  LoginTextField(
                    isObscureText: false,
                    hint: 'Phone',
                    onChanged: (data) {
                      phone = data;
                    },
                    keyboardType: TextInputType.phone,
                  ),
                  LoginBtn(
                    text: "LOGIN",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, BusinessCard.id,
                            arguments: {
                              "name": name,
                              "email": email,
                              "title": title,
                              "phone": phone,
                            });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
