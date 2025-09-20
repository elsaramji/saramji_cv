
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class TecnoilgyHighLight extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  const TecnoilgyHighLight({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
      child: Text(
        text,
        style: AppTextStyles.poppinsRegular12.copyWith(color: textColor),
      ),
    );
  }
}
