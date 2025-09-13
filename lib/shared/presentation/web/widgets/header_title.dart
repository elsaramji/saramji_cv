import 'package:flutter/material.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class HeaderTitel extends StatelessWidget {
  final String title;
  const HeaderTitel({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title, style: AppTextStyles.poppinsBold32));
  }
}
