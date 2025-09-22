import 'package:flutter/widgets.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/experiences/presentation/web/widgets/technoilgy_high_light.dart';

List<Widget> dscTech = [
  TecnoilgyHighLight(
    color: AppColors.highlightBlue,
    text: 'Flutter',
    textColor: AppColors.highlightTextBlue,
  ),
  TecnoilgyHighLight(
    color: AppColors.highlightRed,
    text: 'Firebase',
    textColor: AppColors.highlightTextRed,
  ),
  TecnoilgyHighLight(
    color: AppColors.highlightYellow,
    text: 'Dart',
    textColor: AppColors.highlightTextYellow,
  ),
  TecnoilgyHighLight(
    color: AppColors.highlightGreen,
    text: 'Git',
    textColor: AppColors.highlightTextGreen,
  ),
  TecnoilgyHighLight(
    color: AppColors.highlightPurple,
    text: 'Agile Scrum',
    textColor: AppColors.highlightTextPurple,
  ),
];
