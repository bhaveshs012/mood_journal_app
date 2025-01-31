import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/pages/onboarding/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'FunnelSans',
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingPageOne(),
    );
  }
}
