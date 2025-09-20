import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/experiences/presentation/web/widgets/experience_slide.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_line.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_title.dart';

class ExperiencesWeb extends StatelessWidget {
  static const index = 2;
  const ExperiencesWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 128.w, vertical: 18.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16.h,
          children: [
            HeaderTitel(title: "Experiences"),
            HeaderLine(),
            ExperiencesSlide(),
          ],
        ),
      ),
    );
  }
}
