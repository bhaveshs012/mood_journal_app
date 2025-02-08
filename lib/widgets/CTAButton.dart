import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:sizer/sizer.dart';

class CTAButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  const CTAButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = AppColors.primary,
      this.textColor = AppColors.textDark});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: "FunnelSans",
            ),
          ),
        ),
      ),
    );
  }
}
