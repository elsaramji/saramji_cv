import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/home/presentation/mobile/widgets/get_contact_info.dart';
import 'package:saramji_cv/features/home/presentation/widgets/profile_image.dart';
import 'package:saramji_cv/features/home/presentation/widgets/profile_navgation_file.dart';

class ProfileSlideMobile extends StatelessWidget {
  final PageController controller;
  const ProfileSlideMobile({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
      child: Center(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 16.h,
            children: [
              ProfileImage(),
              Text(
                "${PersonalValues.fristName} ${PersonalValues.lastName}",
                style: AppTextStyles.poppinsBold24.copyWith(
                  color: AppColors.secondaryTextLight,
                ),
              ),
              Text(
                PersonalValues.headLine,
                style: AppTextStyles.poppinsMedium18.copyWith(
                  color: AppColors.primaryText,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                PersonalValues.bio,
                style: AppTextStyles.poppinsRegular16.copyWith(
                  color: AppColors.primaryText,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              ProfileNavgtionButton(
                controller: controller,
                getInTouch: () {},
                viewProjects: () {},
              ),
              SizedBox(height: 16.h),
              GetContactInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
