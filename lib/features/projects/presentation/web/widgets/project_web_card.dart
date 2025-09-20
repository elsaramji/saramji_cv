import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/contorols/open_links.dart';
import 'package:saramji_cv/core/helper/values/projects_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/experiences/presentation/web/widgets/technoilgy_high_light.dart';

class ProjectCardweb extends StatelessWidget {
  final Project project;

  const ProjectCardweb({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
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
          SizedBox(
            width: 350.w,
            height: 192.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(project.images, fit: BoxFit.contain),
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(project.title, style: AppTextStyles.poppinsBold16),

                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: Text(
                      project.description,
                      overflow: TextOverflow.clip,
                      style: AppTextStyles.poppinsRegular12.copyWith(
                        color: AppColors.secondaryText,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 8.w,
                      children: [
                        TecnoilgyHighLight(
                          color: AppColors.highlightBlue,
                          text: project.technologies[0],
                          textColor: AppColors.highlightTextBlue,
                        ),
                        TecnoilgyHighLight(
                          color: AppColors.highlightGreen,
                          text: project.technologies[1],
                          textColor: AppColors.highlightTextGreen,
                        ),
                        TecnoilgyHighLight(
                          color: AppColors.highlightRed,
                          text: project.technologies[2],
                          textColor: AppColors.highlightTextRed,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 8.w,
                    children: [
                      TextButton(
                        onPressed: () {
                          openLink(project.links[0]);
                        },
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
                        onPressed: () {
                          openLink(project.links[1]);},
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
