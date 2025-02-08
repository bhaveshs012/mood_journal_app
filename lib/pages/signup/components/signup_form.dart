import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/widgets/CTAButton.dart';
import 'package:mood_journal_app/widgets/CustomTextField.dart';
import 'package:uicons/uicons.dart';

class SignupForm extends StatelessWidget {
  SignupForm({
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
            label: 'Name',
            icon: UIcons.regularRounded.user,
            keyboardType: TextInputType.text,
            obscureText: false,
          ),
          AppSpacing.verticalSpace(16.0),
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
            label: 'Date of Birth',
            icon: UIcons.regularRounded.calendar,
            keyboardType: TextInputType.datetime,
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
          CustomTextField(
            controller: TextEditingController(),
            label: 'Confirm Password',
            icon: UIcons.regularRounded.key,
            obscureText: true,
          ),
          AppSpacing.verticalSpace(32.0),
          CTAButton(
            text: 'Register',
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
