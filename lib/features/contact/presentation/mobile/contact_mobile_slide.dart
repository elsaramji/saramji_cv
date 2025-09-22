import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/helper/values/personal_values.dart';
import 'package:saramji_cv/core/themes/colors/app_colors.dart';
import 'package:saramji_cv/features/contact/presentation/mobile/info_card.dart';
import 'package:saramji_cv/features/home/presentation/mobile/widgets/get_contact_info.dart';

class ContactSlideMobile extends StatelessWidget {
  const ContactSlideMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 525.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoCardMobile(
            title: 'Email',
            subtitle: PersonalValues.email,
            icon: Icons.email,
          ),
          InfoCardMobile(
            title: 'Phone',
            subtitle: PersonalValues.phone,
            icon: Icons.phone,
          ),
          InfoCardMobile(
            title: 'Address',
            subtitle: PersonalValues.location,
            icon: Icons.location_on,
          ),

          GetContactInfo(color: AppColors.primaryText),
        ],
      ),
    );
  }
}
