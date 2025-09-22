import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/features/contact/presentation/mobile/contact_mobile_slide.dart';
import 'package:saramji_cv/features/contact/presentation/web/widgets/contact_web_slide.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_line.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_title.dart';

class ContactWeb extends StatelessWidget {
  static const index = 5;
  const ContactWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 92.w, vertical: 18.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16.h,
        children: [
          HeaderTitel(title: "Get In Touch"),
          HeaderLine(),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                child: ContactSlideWeb(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
