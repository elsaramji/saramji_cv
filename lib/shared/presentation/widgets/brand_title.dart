import 'package:flutter/material.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class BarndTitle extends StatelessWidget {
  const BarndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      PersonalValues.barndName,
      style: AppTextStyles.poppinsBold20.copyWith(
        color: AppColors.primary,
      ),
    );
  }
}
