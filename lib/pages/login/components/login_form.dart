import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal_app/auth/auth_controller.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/utils/validator.dart';
import 'package:mood_journal_app/widgets/CTAButton.dart';
import 'package:mood_journal_app/widgets/CustomTextField.dart';
import 'package:uicons/uicons.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
  });

  final AuthController controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            label: 'Email',
            icon: UIcons.regularRounded.envelope,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              return Validator.checkEmail(value);
            },
            obscureText: false,
          ),
          AppSpacing.verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            label: 'Password',
            icon: UIcons.regularRounded.key,
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a password";
              }
              return null;
            },
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
          Obx(
            () => CTAButton(
              isDisabled: controller.isLoading.value,
              text: controller.isLoading.value ? "Please wait..." : 'Login',
              onPressed: () => {
                if (controller.loginFormKey.currentState!.validate())
                  {controller.login()}
              },
            ),
          ),
        ],
      ),
    );
  }
}
