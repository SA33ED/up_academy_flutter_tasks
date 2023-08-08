import 'package:flutter/material.dart';
import 'package:team_app/widgets/custom_btn.dart';

import '../helpers/app_assets.dart';

class VerifyYourEmail extends StatelessWidget {
  const VerifyYourEmail({super.key});
  static String id = "VerifyYourEmail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Verify your Email ',
              style: TextStyle(
                color: Color(0xFF6D67E4),
                fontSize: 28,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 310,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Please enter The 5 digit code sent to ',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'noreply',
                      style: TextStyle(
                        color: Color(0xFF6D67E4),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '@gmail.com',
                      style: TextStyle(
                        color: Color(0xFF6D67E4),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: Image.asset(
                Assets.imagesOnBoarding2,
                width: 100,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 60,
              child: ListView.separated(
                separatorBuilder: (_, i) {
                  return const SizedBox(width: 30);
                },
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, i) {
                  return Container(
                    width: 70,
                    height: 10,
                    decoration: const BoxDecoration(color: Colors.grey),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomBtn(
              title: "Verify",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 334,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "don't receive verification code?\n",
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'Resend Code',
                      style: TextStyle(
                        color: Color(0xFF6D67E4),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
