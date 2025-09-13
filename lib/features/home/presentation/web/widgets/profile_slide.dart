import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/profile_image.dart';

class ProfileSlide extends StatelessWidget {
  const ProfileSlide({super.key});

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
                "Mahmoud Ahmed Al-Saramji",
                style: AppTextStyles.poppinsBold28.copyWith(
                  color: AppColors.secondaryTextLight,
                ),
              ),
              Text(
                "Mobile Developer (Flutter) | Scalable App Design, Clean Architecture & Firebase | CI/CD & API Integration",
                style: AppTextStyles.poppinsRegular18.copyWith(
                  color: AppColors.primaryText,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Crafting exceptional mobile experiences with Flutter & Firebase",
                style: AppTextStyles.poppinsRegular18.copyWith(
                  color: AppColors.primaryText,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Row(
                spacing: 16.w,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("View Projects")),
                  OutlinedButton(onPressed: () {}, child: Text("Get In Touch")),
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
