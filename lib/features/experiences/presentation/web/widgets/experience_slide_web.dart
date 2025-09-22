import 'package:flutter/material.dart';
import 'package:saramji_cv/core/helper/values/experience_values.dart';
import 'package:saramji_cv/features/experiences/presentation/constant/high_light_technologies.dart';
import 'package:saramji_cv/features/experiences/presentation/web/widgets/experience_card.dart';

class ExperiencesSlideWeb extends StatelessWidget {
  const ExperiencesSlideWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: ExperiencesCardWeb(
            title: ExperienceValues.title,
            period: ExperienceValues.period,
            company: ExperienceValues.company,
            description: ExperienceValues.description,
            technologies: dscTech,
          ),
        ),
      ),
    );
  }
}
