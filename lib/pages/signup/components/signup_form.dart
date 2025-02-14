import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal_app/auth/auth_controller.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/utils/validator.dart';
import 'package:mood_journal_app/widgets/CTAButton.dart';
import 'package:mood_journal_app/widgets/CustomTextField.dart';
import 'package:uicons/uicons.dart';

class SignupForm extends StatelessWidget {
  SignupForm({
    super.key,
  });
  final AuthController controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          CustomTextField(
            controller: controller.nameTextEditingController,
            label: 'Name',
            icon: UIcons.regularRounded.user,
            keyboardType: TextInputType.text,
            obscureText: false,
            validator: (value) {
              return Validator.checkName(value);
            },
          ),
          AppSpacing.verticalSpace(16.0),
          CustomTextField(
            controller: controller.emailTextEditingController,
            label: 'Email',
            icon: UIcons.regularRounded.envelope,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            validator: (value) {
              return Validator.checkEmail(value);
            },
          ),
          AppSpacing.verticalSpace(16.0),
          CustomTextField(
            controller: controller.passwordTextEditingController,
            label: 'Password',
            icon: UIcons.regularRounded.key,
            obscureText: true,
            validator: (value) {
              return Validator.checkPassword(value);
            },
          ),
          AppSpacing.verticalSpace(16.0),
          CustomTextField(
            controller: controller.confirmPasswordTextEditingController,
            label: 'Confirm Password',
            icon: UIcons.regularRounded.key,
            obscureText: true,
            validator: (value) {
              return (value != null &&
                      controller.passwordTextEditingController.text != value)
                  ? "Passwords do not match"
                  : null;
            },
          ),
          AppSpacing.verticalSpace(32.0),
          Obx(
            () => CTAButton(
              isDisabled: controller.isLoading.value,
              text: controller.isLoading.value ? "Please wait..." : 'Register',
              onPressed: () => {
                if (controller.signupFormKey.currentState!.validate())
                  {controller.registerUser()}
              },
            ),
          )
        ],
      ),
    );
  }
}
