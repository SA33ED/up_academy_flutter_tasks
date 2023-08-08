import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_app/helpers/app_assets.dart';
import 'package:team_app/screens/verify_your_email.dart';
import 'package:team_app/widgets/custom_btn.dart';
import 'package:team_app/widgets/custom_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = "LoginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView(
                children: [
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 230,
                    child: Image.asset(
                      Assets.imagesOnBoarding1,
                      width: 100,
                    ),
                  ),
                  CustomTextField(
                    hint: "Email",
                    suffixIcon: const Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    hint: "Password",
                    suffixIcon: const Icon(Icons.lock_outline),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            onChanged: (cheak) {},
                            value: false,
                          ),
                          const Text(
                            "Remember me",
                            style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Color(0xFF6D67E4),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomBtn(
                    title: "Sign In",
                    onTap: () {
                      Navigator.pushNamed(context, VerifyYourEmail.id);
                    },
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Divider(
                          indent: 5,
                          endIndent: 0,
                          thickness: 1,
                          color: Color(0xFF909090),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "or continue with",
                          style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Divider(
                          indent: 5,
                          endIndent: 0,
                          thickness: 1,
                          color: Color(0xFF909090),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xffF6F6F6),
                        radius: 25,
                        child: SvgPicture.asset(Assets.imagesGoogle),
                      ),
                      CircleAvatar(
                          backgroundColor: const Color(0xffF6F6F6),
                          radius: 30,
                          child: SvgPicture.asset(Assets.imagesFacebook)),
                      CircleAvatar(
                          backgroundColor: const Color(0xffF6F6F6),
                          radius: 25,
                          child: SvgPicture.asset(Assets.imagesApple)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account?',
                              style: TextStyle(
                                color: Color(0xFF909090),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Color(0xFF6D67E4),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Signup',
                              style: TextStyle(
                                color: Color(0xFF6D67E4),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
