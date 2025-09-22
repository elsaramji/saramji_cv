import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/features/about/presentation/mobile/widgets/about_card_mobile.dart';
import 'package:saramji_cv/shared/presentation/mobile/widgets/head_text.dart';

class AboutMobileView extends StatelessWidget {
  static const int index = 1;
  const AboutMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          spacing: 16.h,
          children: [
            HeadText(data: "About Me"),

            AboutMobileCard(),
          ],
        ),
      ),
    );
  }
}
