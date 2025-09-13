
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/about/presentation/web/widgets/marker.dart';

class AboutSlideContant extends StatelessWidget {
  final String aboutMe ;
  final String summary ;
  const AboutSlideContant({
    super.key, required this.aboutMe, required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
                
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32.h,
            children: [
              Text(
                aboutMe,
                style: AppTextStyles.poppinsRegular16,
                textAlign: TextAlign.center,
              ),
          
              Text(
                summary,
                style: AppTextStyles.poppinsRegular16,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
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
                        image: "assets/icons/mobile-development.png",
                      ),
                    ),
                    Marker(
                      child: MarkerContant(
                        text: "Clean Architecture",
                        image: "assets/icons/code.png",
                      ),
                    ),
                                  
                    Marker(
                      child: MarkerContant(
                        text: "CI/CD",
                        image: "assets/icons/Ci&CD.png",
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
