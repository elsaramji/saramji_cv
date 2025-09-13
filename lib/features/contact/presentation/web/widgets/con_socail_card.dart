import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';

class SocailCard extends StatelessWidget {
  final String image;
  const SocailCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.sp,
      height: 48.sp,

      decoration: BoxDecoration(
        color: AppColors.primaryText.withAlpha(30),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Image.asset(
          'assets/icons/linkedIn.png',
          color: AppColors.primaryText,
          width: 24.sp,
          height: 24.sp,
        ),
      ),
    );
  }
}
