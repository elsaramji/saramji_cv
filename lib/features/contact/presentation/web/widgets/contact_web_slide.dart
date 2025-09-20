import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/contact/presentation/functions/get_cv.dart';
import 'package:saramji_cv/features/contact/presentation/functions/go_github.dart';
import 'package:saramji_cv/features/contact/presentation/functions/go_linkedIn.dart';
import 'package:saramji_cv/features/contact/presentation/web/widgets/info_card.dart';
import 'package:saramji_cv/features/contact/presentation/web/widgets/socail_card.dart';

class ContactSlideWeb extends StatelessWidget {
  const ContactSlideWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 128.w, vertical: 18.h),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 32.h,
          children: [
            Text("Connection Information", style: AppTextStyles.poppinsBold24),
            InfoCard(
              title: 'Email',
              subtitle: PersonalValues.email,
              icon: Icons.email,
            ),
            InfoCard(
              title: 'Phone',
              subtitle: PersonalValues.phone,
              icon: Icons.phone,
            ),
            InfoCard(
              title: 'Address',
              subtitle: PersonalValues.location,
              icon: Icons.location_on,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 32.w,
              children: [
                SocailCard(
                  image: "assets/icons/linkedIn.png",
                  onTap: goLinkedIn,
                ),
                SocailCard(image: 'assets/icons/github.png', onTap: goGitHub),
                ElevatedButton(
                  onPressed: () {
                    getCv();
                  },
                  child: Row(
                    children: [
                      Icon(Icons.download, color: AppColors.white),
                      Text(
                        "Resume",
                        style: AppTextStyles.poppinsRegular14.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
