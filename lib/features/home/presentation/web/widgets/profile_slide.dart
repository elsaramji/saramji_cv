import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/profile_image.dart';

class ProfileSlide extends StatelessWidget {
  final PageController controller;
  const ProfileSlide({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.w),
      child: Center(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            spacing: 16.h,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.h),
              ProfileImage(),

              Text(
                "${PersonalValues.fristName} ${PersonalValues.lastName}",
                style: AppTextStyles.poppinsBold28.copyWith(
                  color: AppColors.secondaryTextLight,
                ),
              ),
              Text(
                PersonalValues.headLine,
                style: AppTextStyles.poppinsMedium20.copyWith(
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
              Row(
                spacing: 16.w,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.animateToPage(
                        3,
                        duration: Duration(seconds: 1),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text("View Projects"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      controller.jumpToPage(5);
                    },
                    child: Text("Get In Touch"),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
