import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class MarkerSkillMobile extends StatelessWidget {
  final String text;
  final String image;
  const MarkerSkillMobile({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, width: 24.sp, height: 24.sp, fit: BoxFit.contain),
        SizedBox(width: 8.w),
        Text(
          text,
          style: AppTextStyles.poppinsRegular11.copyWith(
            color: AppColors.primaryTextMarker,
          ),
        ),
      ],
    );
  }
}
