import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/about/presentation/web/widgets/marker.dart';

class AboutSlideContant extends StatelessWidget {
  final String summary;
  const AboutSlideContant({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 32.h,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32.w),
                child: Text(
                  summary,
                  style: AppTextStyles.poppinsRegular18,
                  textAlign: TextAlign.center,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                child: Row(
                  spacing: 32.w,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Marker(
                      child: MarkerContant(
                        text: "Mobile Development",
                        image: "assets/icons/phone.png",
                      ),
                    ),
                    Marker(
                      child: MarkerContant(
                        text: "Paletform Development",
                        image: "assets/icons/code.png",
                      ),
                    ),

                    Marker(
                      child: MarkerContant(
                        text: "Backend & Database",
                        image: "assets/icons/db.png",
                      ),
                    ),
                    Marker(
                      child: MarkerContant(
                        text: "Clean Architecture",
                        image: "assets/icons/arch.png",
                      ),
                    ),

                    Marker(
                      child: MarkerContant(
                        text: "DevOps & Tools",
                        image: "assets/icons/connect.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
