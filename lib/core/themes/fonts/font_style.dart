import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';

class AppTextStyles {
  // poppins Regular
  static TextStyle poppinsRegular(double size, {Color? color}) =>
      GoogleFonts.poppins(
        fontSize: size.sp,
        fontWeight: FontWeight.w400,
        color: color ?? AppColors.primaryText,
      );

  // poppins Medium
  static TextStyle poppinsMedium(double size, {Color? color}) =>
      GoogleFonts.poppins(
        fontSize: size.sp,
        fontWeight: FontWeight.w500,
        color: color ?? AppColors.primaryText,
      );

  // poppins Bold
  static TextStyle poppinsBold(double size, {Color? color}) =>
      GoogleFonts.poppins(
        fontSize: size.sp,
        fontWeight: FontWeight.w700,
        color: color ?? AppColors.primaryText,
      );

  // Examples: Regular
  static final poppinsRegular11 = poppinsRegular(11);
  static final poppinsRegular12 = poppinsRegular(12);
  static final poppinsRegular14 = poppinsRegular(14);
  static final poppinsRegular16 = poppinsRegular(16);
  static final poppinsRegular18 = poppinsRegular(18);
  static final poppinsRegular20 = poppinsRegular(20);
  static final poppinsRegular24 = poppinsRegular(24);
  static final poppinsRegular28 = poppinsRegular(28);
  static final poppinsRegular32 = poppinsRegular(32);
  static final poppinsRegular36 = poppinsRegular(36);
  static final poppinsRegular40 = poppinsRegular(40);
  static final poppinsRegular48 = poppinsRegular(48);

  // Medium
  static final poppinsMedium11 = poppinsMedium(11);
  static final poppinsMedium12 = poppinsMedium(12);
  static final poppinsMedium14 = poppinsMedium(14);
  static final poppinsMedium16 = poppinsMedium(16);
  static final poppinsMedium18 = poppinsMedium(18);
  static final poppinsMedium20 = poppinsMedium(20);
  static final poppinsMedium24 = poppinsMedium(24);
  static final poppinsMedium28 = poppinsMedium(28);
  static final poppinsMedium32 = poppinsMedium(32);
  static final poppinsMedium36 = poppinsMedium(36);
  static final poppinsMedium40 = poppinsMedium(40);
  static final poppinsMedium48 = poppinsMedium(48);

  // Bold
  static final poppinsBold11 = poppinsBold(11);
  static final poppinsBold12 = poppinsBold(12);
  static final poppinsBold14 = poppinsBold(14);
  static final poppinsBold16 = poppinsBold(16);
  static final poppinsBold18 = poppinsBold(18);
  static final poppinsBold20 = poppinsBold(20);
  static final poppinsBold24 = poppinsBold(24);
  static final poppinsBold28 = poppinsBold(28);
  static final poppinsBold32 = poppinsBold(32);
  static final poppinsBold36 = poppinsBold(36);
  static final poppinsBold40 = poppinsBold(40);
  static final poppinsBold48 = poppinsBold(48);
}
