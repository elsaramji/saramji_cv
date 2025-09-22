import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/projects_values.dart';
import 'package:saramji_cv/features/projects/presentation/web/widgets/project_web_card.dart';
import 'package:saramji_cv/shared/presentation/mobile/widgets/head_text.dart';

class ProjectsMobile extends StatelessWidget {
  static const index = 3;
  const ProjectsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
        child: Column(
          spacing: 12.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeadText(data: "Featured Projects"),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 16.h,
                    children: projects
                        .map((e) => ProjectCardweb(project: e))
                        .toList(),
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
