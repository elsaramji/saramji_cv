import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/theme_light.dart';
import 'package:saramji_cv/features/about/presentation/web/view/about_web.dart';
import 'package:saramji_cv/features/contact/presentation/web/views/contact_web.dart';
import 'package:saramji_cv/features/experiences/presentation/web/views/experiences_web.dart';
import 'package:saramji_cv/features/home/presentation/web/views/home_web.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/app_bar.dart';
import 'package:saramji_cv/features/projects/presentation/web/views/projects_web.dart';
import 'package:saramji_cv/features/skills/presentation/web/views/skills_web.dart';

class LuncherWeb extends StatefulWidget {
  const LuncherWeb({super.key});

  @override
  State<LuncherWeb> createState() => _LuncherWebState();
}

class _LuncherWebState extends State<LuncherWeb> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
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
        home: Scaffold(
          appBar: AppBarWeb(pageController: pageController),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 16.h,
            children: [
              FloatingActionButton(
                onPressed: () {
                  if (pageController.page != 0.0) {
                    pageController.previousPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.linear,
                    );
                  }
                },
                child: Icon(Icons.arrow_upward),
              ),
              FloatingActionButton(
                onPressed: () {
                  if (pageController.page != 5.0) {
                    pageController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.linear,
                    );
                  }
                },
                child: Icon(Icons.arrow_downward),
              ),
            ],
          ),
          body: PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              HomeWeb(controller: pageController),
              AboutWeb(),
              ExperiencesWeb(),
              ProjectsWeb(),
              SkillsWeb(),
              ContactWeb(),
            ],
          ),
        ),
      ),
    );
  }
}
