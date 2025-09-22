import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/contact/presentation/mobile/contact_mobile_slide.dart';
import 'package:saramji_cv/shared/presentation/mobile/widgets/head_text.dart';

class ContactMobile extends StatelessWidget {
  static const index = 5;
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 64.w, vertical: 16.h),
      child: Column(
        spacing: 16.h,
        children: [
          HeadText(data: "Get In Touch"),
          Text("Connection Information", style: AppTextStyles.poppinsBold16),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.hardEdge,
              child: ContactSlideMobile(),
            ),
          ),
        ],
      ),
    );
  }
}
