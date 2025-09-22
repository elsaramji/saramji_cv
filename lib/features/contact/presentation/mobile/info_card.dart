import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class InfoCardMobile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const InfoCardMobile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      splashColor: AppColors.primary.withAlpha(10),
      leading: Container(
        width: 48.sp,
        height: 48.sp,

        decoration: BoxDecoration(
          color: AppColors.primary.withAlpha(30),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Icon(icon, size: 24.sp, color: AppColors.primary),
      ),
      title: Text(
        title,
        style: AppTextStyles.poppinsRegular14.copyWith(
          color: AppColors.primaryText,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: AppTextStyles.poppinsRegular11.copyWith(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
