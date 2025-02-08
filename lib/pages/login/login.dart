import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/pages/login/components/social_logins.dart';
import 'package:mood_journal_app/widgets/CTAButton.dart';
import 'package:mood_journal_app/widgets/CustomTextField.dart';
import 'package:uicons/uicons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
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
              CustomTextField(
                controller: TextEditingController(),
                label: 'Email',
                icon: UIcons.regularRounded.envelope,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
              AppSpacing.verticalSpace(16.0),
              CustomTextField(
                controller: TextEditingController(),
                label: 'Password',
                icon: UIcons.regularRounded.key,
                obscureText: true,
              ),
              AppSpacing.verticalSpace(16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password',
                  style: AppTextStyles.text().copyWith(
                    color: AppColors.accentBlue,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.accentBlue,
                  ),
                ),
              ),
              AppSpacing.verticalSpace(32.0),
              CTAButton(
                text: 'Login',
                onPressed: () => {},
              ),
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
    );
  }
}
