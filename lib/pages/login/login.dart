import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/pages/login/components/login_form.dart';
import 'package:mood_journal_app/pages/login/components/social_logins.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

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
                  "Sign in",
                  style: AppTextStyles.heading(),
                ),
                AppSpacing.verticalSpace(10.0),
                Text(
                  "Register Here !",
                  style: AppTextStyles.subtitle(
                    color: AppColors.primary,
                  ),
                ),
                AppSpacing.verticalSpace(32.0),
                LoginForm(),
                AppSpacing.verticalSpace(16.0),
                Center(
                  child: Text(
                    "or continue with",
                    style: AppTextStyles.subtitle(
                      color: AppColors.textLight,
                    ),
                  ),
                ),
                AppSpacing.verticalSpace(16.0),
                SocialLogins()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
