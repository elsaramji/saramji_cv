import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';

class SocailCard extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  const SocailCard({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48.sp,
        height: 48.sp,

        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Image.asset(
            image,
            color: AppColors.secondaryBackground,
            width: 24.sp,
            height: 24.sp,
          ),
        ),
      ),
    );
  }
}
