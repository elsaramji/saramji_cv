
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart' show PersonalValues;
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/about/presentation/mobile/widgets/skills_marker_list_mobile.dart';

class AboutMobileCard extends StatelessWidget {
  const AboutMobileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(30),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          spacing: 16.h,
          children: [
            Text(
              PersonalValues.about,
              style: AppTextStyles.poppinsRegular16.copyWith(
                color: AppColors.primaryText,
              ),
              textAlign: TextAlign.center,
            ),
            SkillsMarkerListMobile(),
          ],
        ),
      ),
    );
  }
}
