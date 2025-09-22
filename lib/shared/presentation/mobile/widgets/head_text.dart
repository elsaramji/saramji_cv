import 'package:flutter/material.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class HeadText extends StatelessWidget {
  final String data;
  const HeadText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: AppTextStyles.poppinsBold24,
      textAlign: TextAlign.center,
    );
  }
}
