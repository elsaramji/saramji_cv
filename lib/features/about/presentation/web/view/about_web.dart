import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/features/about/presentation/web/widgets/about_contant_slide.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_line.dart';
import 'package:saramji_cv/shared/presentation/web/widgets/header_title.dart';

class AboutWeb extends StatelessWidget {
  const AboutWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 18.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16.h,
          children: [
            HeaderTitel(title: "About Me"),

            HeaderLine(),
            AboutSlideContant(
              aboutMe:
                  "Passionate mobile developer with expertise in Flutter and Firebase,\n specializing in clean architecture and scalable solutions.\n I build high-performance applications that deliver exceptional user experiences.",

              summary:
                  "I'm a dedicated team player, constantly seeking opportunities to learn and grow. My commitment to excellence and dedication to my work make me a valuable asset to any team.",
            ),
          ],
        ),
      ),
    );
  }
}
