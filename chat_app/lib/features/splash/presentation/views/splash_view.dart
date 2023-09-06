import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, "OnBoardingView");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          "Chat App",
          style: CustomTextStyle.odorMeanCheyStyle64,
        ),
      ),
    );
  }
}
