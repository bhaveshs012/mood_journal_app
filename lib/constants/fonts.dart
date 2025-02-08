import 'package:mood_journal_app/constants/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const String fontFamily = 'FunnelSans';

  static TextStyle heading({Color color = AppColors.textDark}) => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
        color: color,
      );

  static TextStyle title({Color color = AppColors.textDark}) => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
        color: color,
      );

  static TextStyle subtitle({Color color = AppColors.textDark}) => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
        color: color,
      );

  static TextStyle text({Color color = AppColors.textDark}) => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        fontFamily: fontFamily,
        color: color,
      );

  static TextStyle smallText({Color color = AppColors.textDark}) => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      );

  static TextStyle buttonText({Color color = AppColors.textDark}) => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
        color: color,
      );
}
