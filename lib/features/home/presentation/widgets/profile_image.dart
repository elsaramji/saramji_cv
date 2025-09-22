import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 84.r,
      backgroundImage: NetworkImage(
        PersonalValues.personalImage,
      ),
    );
  }
}
