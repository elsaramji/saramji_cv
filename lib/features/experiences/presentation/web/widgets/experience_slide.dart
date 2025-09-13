
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/experiences/presentation/web/widgets/experience_card.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/technoilgy_high_light.dart';

class ExperiencesSlide extends StatelessWidget {
  const ExperiencesSlide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
    
            children: [
              ExperiencesCard(
                title: "Flutter Developer",
                period: "Mar 2023 - Present",
                company: "CleverTap",
                description:
                    "Design and develop mobile apps using Flutter, Dart, and Firebase.",
                technologies: [
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
                    color: AppColors.highlightYellow,
                    text: "Clean Architecture",
                    textColor: AppColors.highlightTextYellow,
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              ExperiencesCard(
                title: "Flutter Developer",
                period: "Mar 2022 - Present",
                company: "CleverTap",
                description:
                    "Design and develop mobile apps using Flutter, Dart, and Firebase.",
                technologies: [
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
                    color: AppColors.highlightYellow,
                    text: "Clean Architecture",
                    textColor: AppColors.highlightTextYellow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
