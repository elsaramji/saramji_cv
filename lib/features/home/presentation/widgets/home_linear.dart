import 'package:flutter/material.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';

class HomeLinear extends StatelessWidget {
  const HomeLinear({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppColors.primary, AppColors.secondarylinear],
        ),
      ),
    );
  }
}
