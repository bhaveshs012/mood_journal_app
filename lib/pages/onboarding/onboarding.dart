import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:mood_journal_app/widgets/CTAButton.dart';
import 'package:sizer/sizer.dart';

class OnboardingPage extends StatelessWidget {
  final String heading;
  final String subtitle;
  final String ctaText;
  final String assetNumber;
  final void Function() onPressed;
  const OnboardingPage(
      {super.key,
      required this.heading,
      required this.subtitle,
      required this.ctaText,
      required this.assetNumber,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/onboarding/$assetNumber.png',
                  height: 40.h,
                  alignment: Alignment.center,
                ),
              ),
              Text(
                heading,
                style: AppTextStyles.heading(),
                textAlign: TextAlign.center,
              ),
              Text(
                subtitle,
                style: AppTextStyles.subtitle(),
                textAlign: TextAlign.center,
              ),
              AppSpacing.verticalSpace(25.0),
              CTAButton(
                text: ctaText,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
