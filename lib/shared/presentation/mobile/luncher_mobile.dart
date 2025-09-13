import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/theme_light.dart';
import 'package:saramji_cv/features/home/presentation/mobile/view/home_mobile.dart';

class LuncherMobile extends StatelessWidget {
  const LuncherMobile({super.key});

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
        home: HomeMobile(),
      ),
    );
  }
}
