import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class MarkerContant extends StatelessWidget {
  final String text;
  final String image;
  const MarkerContant({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, width: 32.sp, height: 32.sp),
        SizedBox(width: 8.w),
        Text(
          text,
          style: AppTextStyles.poppinsRegular12.copyWith(
            color: AppColors.primaryTextMarker,
          ),
        ),
      ],
    );
  }
}

class Marker extends StatelessWidget {
  final Widget child;
  const Marker({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryMarker,
        borderRadius: BorderRadius.circular(8.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      child: child,
    );
  }
}
