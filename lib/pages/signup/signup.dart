import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/pages/signup/components/signup_form.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: AppTextStyles.heading(),
                ),
                AppSpacing.verticalSpace(10.0),
                Text(
                  "Login Here !",
                  style: AppTextStyles.subtitle(
                    color: AppColors.primary,
                  ),
                ),
                AppSpacing.verticalSpace(32.0),
                SignupForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
