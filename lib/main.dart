import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/pages/login/login.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'FunnelSans',
            primaryColor: AppColors.primary,
            scaffoldBackgroundColor: AppColors.background,
          ),
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
          // home: OnboardingPage(
          //   assetNumber: "3",
          //   heading: "Welcome to SoulScript",
          //   subtitle: "Your personal space for reflection and growth",
          //   onPressed: () => {},
          //   ctaText: "Get Started",
          // ),
        );
      },
    );
  }
}
