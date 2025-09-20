import 'package:flutter/material.dart';
import 'package:saramji_cv/core/helper/values/experience_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/experiences/presentation/web/widgets/experience_card.dart';
import 'package:saramji_cv/features/experiences/presentation/web/widgets/technoilgy_high_light.dart';

class ExperiencesSlide extends StatelessWidget {
  const ExperiencesSlide({super.key});

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
                title: ExperienceValues.title,
                period: ExperienceValues.period,
                company: ExperienceValues.company,
                description: ExperienceValues.description,
                technologies: [
                  TecnoilgyHighLight(
                    color: AppColors.highlightBlue,
                    text: 'Flutter',
                    textColor: AppColors.highlightTextBlue,
                  ),
                  TecnoilgyHighLight(
                    color: AppColors.highlightRed,
                    text: 'Firebase',
                    textColor: AppColors.highlightTextRed,
                  ),
                  TecnoilgyHighLight(
                    color: AppColors.highlightYellow,
                    text: 'Dart',
                    textColor: AppColors.highlightTextYellow,
                  ),
                  TecnoilgyHighLight(
                    color: AppColors.highlightGreen,
                    text: 'Git',
                    textColor: AppColors.highlightTextGreen,
                  ),
                  TecnoilgyHighLight(
                    color: AppColors.highlightPurple,
                    text: 'Agile Scrum',
                    textColor: AppColors.highlightTextPurple,
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
