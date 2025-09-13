import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/technoilgy_high_light.dart';

class ProjectCardweb extends StatelessWidget {
  const ProjectCardweb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 92.h),
      // padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      width: 350.w,
      height: 440.h,
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
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              "https://miro.medium.com/v2/resize:fit:1100/format:webp/1*SdXRP8f2Lhin89Tht_GRIA.jpeg",

              fit: BoxFit.fill,
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Flutter Portfolio", style: AppTextStyles.poppinsBold16),

                  Text(
                    "Full-featured shopping app with Firebase backend and clean architecture implementation.",
                    style: AppTextStyles.poppinsRegular12.copyWith(
                      color: AppColors.secondaryText,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 8.w,
                    children: [
                      TecnoilgyHighLight(
                        color: AppColors.highlightBlue,
                        text: "Flutter",
                        textColor: AppColors.highlightTextBlue,
                      ),
                      TecnoilgyHighLight(
                        color: AppColors.highlightGreen,
                        text: "Firebase",
                        textColor: AppColors.highlightTextGreen,
                      ),
                      TecnoilgyHighLight(
                        color: AppColors.highlightRed,
                        text: "Clean Architecture",
                        textColor: AppColors.highlightTextRed,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 8.w,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 8.w,
                          children: [
                            Image.asset(
                              "assets/icons/github.png",
                              height: 24.sp,
                              width: 24.sp,
                            ),
                            Text(
                              "View on GitHub",
                              style: AppTextStyles.poppinsRegular12.copyWith(
                                color: AppColors.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 8.w,
                          children: [
                            Image.asset(
                              "assets/icons/demo.png",
                              height: 20.sp,
                              width: 20.sp,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              "Live Demo",
                              style: AppTextStyles.poppinsRegular12.copyWith(
                                color: AppColors.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
