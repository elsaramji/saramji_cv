import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/features/about/presentation/web/view/about_web.dart';
import 'package:saramji_cv/features/contact/presentation/web/views/contact_web.dart';
import 'package:saramji_cv/features/experiences/presentation/web/views/experiences_web.dart';
import 'package:saramji_cv/features/projects/presentation/web/views/projects_web.dart';
import 'package:saramji_cv/features/skills/presentation/web/views/skills_web.dart';
import 'package:saramji_cv/shared/presentation/functions/goto_slide.dart';
import 'package:saramji_cv/shared/presentation/widgets/app_bar_action.dart';
import 'package:saramji_cv/shared/presentation/widgets/brand_title.dart';

class AppBarWeb extends StatelessWidget implements PreferredSizeWidget {
  final PageController pageController;
  const AppBarWeb({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.w),
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: GestureDetector(
          onTap: () {
            gotoslide(0, pageController);
          },
          child: BarndTitle(),
        ),
      ),

      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarAction(
              title: "About",
              onPressed: () {
                gotoslide(AboutWeb.index, pageController);
              },
            ),
            AppBarAction(
              title: "Projects",
              onPressed: () {
                gotoslide(ProjectsWeb.index, pageController);
              },
            ),
            AppBarAction(
              title: "Experience",
              onPressed: () {
                gotoslide(ExperiencesWeb.index, pageController);
              },
            ),
            AppBarAction(
              title: "Skills",
              onPressed: () {
                gotoslide(SkillsWeb.index, pageController);
              },
            ),
            AppBarAction(
              title: "Contact",
              onPressed: () {
                gotoslide(ContactWeb.index, pageController);
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(42.h);
}


