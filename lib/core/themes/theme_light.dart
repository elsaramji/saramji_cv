import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class AppTheme {
  static Color primaryColor = AppColors.primary;
  static Color scaffoldBackgroundColor = AppColors.white;
  static Color secondaryColor = AppColors.secondary;
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      error: Colors.redAccent,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: scaffoldBackgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        elevation: 0,
        textStyle: AppTextStyles.poppinsMedium11.copyWith(
          color: scaffoldBackgroundColor,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: primaryColor, width: 1.w),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        foregroundColor: scaffoldBackgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        elevation: 0,
        textStyle: AppTextStyles.poppinsMedium11.copyWith(
          color: scaffoldBackgroundColor,
        ),
      ),
    ),
  );
}
