import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/shared/presentation/functions/goto_slide.dart';
import 'package:saramji_cv/shared/presentation/widgets/brand_title.dart';

class SmalleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final PageController controller;
  const SmalleAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: GestureDetector(
        onTap: () {
          gotoslide(0, controller);
        },
        child: BarndTitle(),
      ),
      actions: [],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(42.h);
}
