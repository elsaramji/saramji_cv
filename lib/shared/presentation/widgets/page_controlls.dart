import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/shared/presentation/widgets/go_down.dart';
import 'package:saramji_cv/shared/presentation/widgets/go_up.dart';

class PagesControlls extends StatelessWidget {
  const PagesControlls({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 16.h,
      children: [
        GoUp(pageController: pageController),
        GoDown(pageController: pageController),
      ],
    );
  }
}

