import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/widgets/CTAButton.dart';
import 'package:mood_journal_app/widgets/CustomTextField.dart';
import 'package:uicons/uicons.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
