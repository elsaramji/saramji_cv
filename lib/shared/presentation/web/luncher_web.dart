import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/theme_light.dart';
import 'package:saramji_cv/features/about/presentation/web/view/about_web.dart';
import 'package:saramji_cv/features/contact/presentation/web/views/contact_web.dart';
import 'package:saramji_cv/features/experiences/presentation/web/views/experiences_web.dart';
import 'package:saramji_cv/features/home/presentation/web/views/home_web.dart';
import 'package:saramji_cv/features/projects/presentation/web/views/projects_web.dart';
import 'package:saramji_cv/features/skills/presentation/web/views/skills_web.dart';

class LuncherWeb extends StatelessWidget {
  const LuncherWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, child) => MaterialApp(
        title: "Saramji Portfolio",
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: const [
            HomeWeb(),
            AboutWeb(),
            ExperiencesWeb(),
            ProjectsWeb(),
            SkillsWeb(),
            ContactWeb(),
          ],
        ),
      ),
    );
  }
}
