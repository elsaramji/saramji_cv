import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class AppBarWeb extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.w),
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Text(
          "Saramji",
          style: AppTextStyles.poppinsBold20.copyWith(color: AppColors.primary),
        ),
      ),

      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: Text(
                "About",
                style: AppTextStyles.poppinsRegular11.copyWith(
                  color: AppColors.secondaryText,
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Projects",
                style: AppTextStyles.poppinsRegular11.copyWith(
                  color: AppColors.secondaryText,
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Experience",
                style: AppTextStyles.poppinsRegular11.copyWith(
                  color: AppColors.secondaryText,
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Skills",
                style: AppTextStyles.poppinsRegular11.copyWith(
                  color: AppColors.secondaryText,
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Contact",
                style: AppTextStyles.poppinsRegular11.copyWith(
                  color: AppColors.secondaryText,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(42.h);
}
