
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/core/themes/theme_light.dart';

class LuncherMobile extends StatelessWidget {
  const LuncherMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: Scaffold(
          body: Center(
            child: Text(
              "Mobile version",
              style: AppTextStyles.poppinsBold20,
            ),
          ),
        ),
      ),
    );
  }
}
