import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/contact/presentation/functions/get_cv.dart';
import 'package:saramji_cv/features/contact/presentation/functions/go_github.dart';
import 'package:saramji_cv/features/contact/presentation/functions/go_linkedIn.dart';

class GetContactInfo extends StatelessWidget {
  final Color? color;
  const GetContactInfo({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            goLinkedIn();
          },
          icon: Image.asset(
            "assets/icons/linkedIn.png",
            width: 32.sp,
            height: 32.sp,
            fit: BoxFit.contain,
            color: color ?? AppColors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            goGitHub();
          },
          icon: Image.asset(
            "assets/icons/github.png",
            width: 32.sp,
            height: 32.sp,
            fit: BoxFit.contain,
            color: color ?? AppColors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            getCv();
          },
          icon: Icon(
            Icons.download,
            color: color ?? AppColors.white,
            size: 32.sp,
          ),
        ),
      ],
    );
  }
}
