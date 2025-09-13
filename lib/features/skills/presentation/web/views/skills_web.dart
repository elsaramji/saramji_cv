import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/skills/presentation/web/widgets/skills_web_card.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_line.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_title.dart';

class SkillsWeb extends StatelessWidget {
  const SkillsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 18.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 12.h,
          children: [
            HeaderTitel(title: "Technical Skills"),
            HeaderLine(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 16.w,
                  children: [
                    SkillsWebCard(
                      title: 'Mobile Development',
                      subtitle: ['Flutter', 'Dart', 'Native Android'],
                      image: 'assets/icons/phone.png',
                      color: AppColors.highlightBlue,
                    ),
                    SkillsWebCard(
                      title: 'Backend & Database',
                      subtitle: ['Firebase', 'Dart', 'SQL', 'Rest API'],
                      image: 'assets/icons/db.png',
                      color: AppColors.highlightRed,
                    ),
                    SkillsWebCard(
                      title: 'Platform Development',
                      subtitle: [
                        'Responsive & Adaptive UI',
                        'Material Design',
                        'Flutter Web & Desktop',
                      ],
                      image: 'assets/icons/code.png',
                      color: AppColors.highlightBlue,
                    ),
                    SkillsWebCard(
                      title: 'DevOps & Tools',
                      subtitle: ['Git', 'CI/CD', 'Jira', 'Figma'],
                      image: 'assets/icons/connect.png',
                      color: AppColors.highlightGreen,
                    ),
                    SkillsWebCard(
                      title: 'Architecture',
                      subtitle: ['Clean Architecture', 'MVVM', 'BLoC'],
                      image: 'assets/icons/arch.png',
                      color: AppColors.highlightPurple,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

