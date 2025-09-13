
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/skills/presentation/web/widgets/skills_web_slied.dart' show SkillsSlide;

class SkillsWebCard extends StatelessWidget {
  final String title;
  final List<String> subtitle;
  final String image;
  final Color color;

  const SkillsWebCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      width: 258.w,
      height: 258.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryText.withAlpha(30),
            blurRadius: 8.r,
            spreadRadius: 0.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: SkillsSlide(
        title: title,
        subtitle: subtitle,
        image: image,
        color: color,
      ),
    );
  }
}
