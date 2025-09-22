import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/experience_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/experiences/presentation/constant/high_light_technologies.dart';
import 'package:saramji_cv/features/experiences/presentation/mobile/widgets/experience_card.dart';
import 'package:saramji_cv/shared/presentation/mobile/widgets/head_text.dart';

class ExperienceMobile extends StatelessWidget {
  static const index = 2;
  const ExperienceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,

      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 32.w),
        child: Column(
          spacing: 16.h,
          children: [
            HeadText(data: "Experience"),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  child: ExperiencesCardMobile(
                    title: ExperienceValues.title,
                    period: ExperienceValues.period,
                    company: ExperienceValues.company,
                    description: ExperienceValues.description,
                    technologies: dscTech,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
