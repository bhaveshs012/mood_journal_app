import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:uicons/uicons.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(
            8.0,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            border: Border.all(
              width: 2.0,
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Icon(
            UIcons.brands.google,
            color: Colors.white,
          ),
        ),
        AppSpacing.horizontalSpace(32.0),
        Container(
          padding: const EdgeInsets.all(
            8.0,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            border: Border.all(
              width: 2.0,
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Icon(
            UIcons.brands.facebook,
            color: Colors.white,
          ),
        ),
        AppSpacing.horizontalSpace(32.0),
        Container(
          padding: const EdgeInsets.all(
            8.0,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            border: Border.all(
              width: 2.0,
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Icon(
            UIcons.brands.apple,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
