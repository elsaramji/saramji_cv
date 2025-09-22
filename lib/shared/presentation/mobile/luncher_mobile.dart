import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/theme_light.dart';
import 'package:saramji_cv/features/about/presentation/mobile/views/about_mobile_view.dart';
import 'package:saramji_cv/features/contact/presentation/mobile/contact_mobile.dart';
import 'package:saramji_cv/features/experiences/presentation/mobile/views/experience_mobile.dart';
import 'package:saramji_cv/features/home/presentation/mobile/view/home_mobile.dart';
import 'package:saramji_cv/features/projects/presentation/mobile/projects_mobile.dart';
import 'package:saramji_cv/features/skills/presentation/mobile/views/skills_mobile.dart';
import 'package:saramji_cv/shared/presentation/functions/goto_slide.dart';
import 'package:saramji_cv/shared/presentation/mobile/widgets/smalle_app_bar.dart';
import 'package:saramji_cv/shared/presentation/widgets/app_bar_action.dart';
import 'package:saramji_cv/shared/presentation/widgets/page_controlls.dart';

class LuncherMobile extends StatefulWidget {
  const LuncherMobile({super.key});

  @override
  State<LuncherMobile> createState() => _LuncherMobileState();
}

class _LuncherMobileState extends State<LuncherMobile> {
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
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: Scaffold(
          appBar: SmalleAppBar(controller: pageController),
          endDrawer: Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                bottomLeft: Radius.circular(16.r),
              ),
            ),
            surfaceTintColor: AppColors.primary,
            child: Column(
              spacing: 16.h,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AppBarAction(
                  title: "About",
                  onPressed: () {
                    gotoslide(AboutMobileView.index, pageController);
                  },
                ),
                AppBarAction(
                  title: "Projects",
                  onPressed: () {
                    gotoslide(ProjectsMobile.index, pageController);
                  },
                ),
                AppBarAction(
                  title: "Experiences",
                  onPressed: () {
                    gotoslide(ExperienceMobile.index, pageController);
                  },
                ),
                AppBarAction(
                  title: "Skills",
                  onPressed: () {
                    gotoslide(SkillsMobile.index, pageController);
                  },
                ),
                AppBarAction(
                  title: "Contact",
                  onPressed: () {
                    gotoslide(ContactMobile.index, pageController);
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: PagesControlls(pageController: pageController),
          body: PageView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            controller: pageController,
            children: [
              HomeMobile(controller: pageController),
              AboutMobileView(),
              ExperienceMobile(),
              ProjectsMobile(),
              SkillsMobile(),
              ContactMobile(),
            ],
          ),
        ),
      ),
    );
  }
}
