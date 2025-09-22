import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/features/about/presentation/mobile/widgets/marker_skill_mobile.dart';
import 'package:saramji_cv/features/about/presentation/widgets/marker.dart';

class SkillsMarkerListMobile extends StatelessWidget {
  const SkillsMarkerListMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(),
      child: Row(
        spacing: 8.w,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    
        children: [
          Marker(
            child: MarkerSkillMobile(
              text: "Mobile Development",
              image: "assets/icons/phone.png",
            ),
          ),
          Marker(
            child: MarkerSkillMobile(
              text: "Paletform Development",
              image: "assets/icons/code.png",
            ),
          ),
    
          Marker(
            child: MarkerSkillMobile(
              text: "Backend & Database",
              image: "assets/icons/db.png",
            ),
          ),
          Marker(
            child: MarkerSkillMobile(
              text: "Clean Architecture",
              image: "assets/icons/arch.png",
            ),
          ),
    
          Marker(
            child: MarkerSkillMobile(
              text: "DevOps & Tools",
              image: "assets/icons/connect.png",
            ),
          ),
        ],
      ),
    );
  }
}
