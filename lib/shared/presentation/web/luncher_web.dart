import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/theme_light.dart';
import 'package:saramji_cv/features/experiences/presentation/web/views/experiences_web.dart';
import 'package:saramji_cv/features/home/presentation/web/views/home_web.dart';

class LuncherWeb extends StatelessWidget {
  const LuncherWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(960, 540),
      builder: (context, child) => MaterialApp(
        title: "Saramji Portfolio",
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: const [HomeWeb(), ExperiencesWeb()],
        ),
      ),
    );
  }
}
