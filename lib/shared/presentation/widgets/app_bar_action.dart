import 'package:flutter/material.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class AppBarAction extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const AppBarAction({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.poppinsRegular14.copyWith(
          color: AppColors.secondaryText,
        ),
      ),
    );
  }
}
