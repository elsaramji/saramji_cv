import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class SkillsSlide extends StatelessWidget {
  final String title;
  final List<String> subtitle;
  final String image;
  final Color color;
  const SkillsSlide({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.h,
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundColor: color,
          child: Image.asset(image, width: 32.sp, height: 32.sp),
        ),
        Text(title, style: AppTextStyles.poppinsBold16),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(vertical: 4.h),
            alignment: Alignment.center,
            child: Text(
              subtitle[index],
              style: AppTextStyles.poppinsRegular12.copyWith(
                color: AppColors.secondaryText,
              ),
            ),
          ),
          itemCount: subtitle.length,
          shrinkWrap: true,
        ),
      ],
    );
  }
}
