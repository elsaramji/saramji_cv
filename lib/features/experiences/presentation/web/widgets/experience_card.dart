
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class ExperiencesCard extends StatelessWidget {
  final String title;
  final String period;
  final String company;
  final String description;
  final List<Widget> technologies;
  const ExperiencesCard({
    super.key,
    required this.title,
    required this.period,
    required this.company,
    required this.description,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
      height: 226.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryText.withAlpha(30),
            blurRadius: 8.r,
          ),
        ],
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.poppinsBold16),
                  Text(
                    company,
                    style: AppTextStyles.poppinsRegular12.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(period, style: AppTextStyles.poppinsRegular12),
            ],
          ),
          Text(description, style: AppTextStyles.poppinsRegular16),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 16.w,

            children: technologies,
          ),
        ],
      ),
    );
  }
}
