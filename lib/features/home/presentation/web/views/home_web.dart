import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBarWeb(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [AppColors.primary, Color(0xFF06B6D4)],
                ),
              ),
            ),
          ),

          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 64.w, vertical: 32.h),
              child: Column(
                spacing: 16.h,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 64.r,
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/90051301?v=4",
                    ),
                  ),

                  Text(
                    "Mahmoud Ahmed Al-Saramji",
                    style: AppTextStyles.poppinsBold20.copyWith(
                      color: AppColors.secondaryTextLight,
                    ),
                  ),
                  Text(
                    "Mobile Developer (Flutter) | Scalable App Design, Clean Architecture & Firebase | CI/CD & API Integration",
                    style: AppTextStyles.poppinsRegular12.copyWith(
                      color: AppColors.primaryText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Crafting exceptional mobile experiences with Flutter & Firebase",
                    style: AppTextStyles.poppinsRegular14.copyWith(
                      color: AppColors.primaryText,
                    ),
                  ),
                  Row(
                    spacing: 16.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("View Projects"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Get In Touch"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
