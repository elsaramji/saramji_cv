import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart';
import 'package:saramji_cv/features/about/presentation/web/widgets/about_contant_slide.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_line.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_title.dart';

class AboutWeb extends StatelessWidget {
  static const int index = 1;
  const AboutWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 64.w, vertical: 18.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16.h,
        children: [
          HeaderTitel(title: "About Me"),
          HeaderLine(),
          AboutSlideContant(summary: PersonalValues.about),
        ],
      ),
    );
  }
}
