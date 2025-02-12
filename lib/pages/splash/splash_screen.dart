import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset('assets/logos/splash.png'),
      ),
    );
  }
}
