import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/projects_values.dart';
import 'package:saramji_cv/features/projects/presentation/web/widgets/project_web_card.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_line.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_title.dart';

class ProjectsWeb extends StatelessWidget {
  static const index = 3;
  const ProjectsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 18.h),
        child: Column(
          spacing: 12.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderTitel(title: "Featured Projects"),
            HeaderLine(),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      spacing: 32.w,
                      children: projects
                          .map((e) => ProjectCardweb(project: e))
                          .toList(),
                    ),
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
