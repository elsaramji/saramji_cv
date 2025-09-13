import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';

class HeaderLine extends StatelessWidget {
  const HeaderLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 96.w, height: 2.h, color: AppColors.secondary);
  }
}
