import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saramji_cv/core/themes/fonts/font_style.dart';
import 'package:saramji_cv/features/contact/presentation/web/widgets/con_info_card.dart';
import 'package:saramji_cv/features/contact/presentation/web/widgets/con_socail_card.dart';

class ContactSlideWeb extends StatelessWidget {
  const ContactSlideWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 128.w, vertical: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 32.h,
        children: [
          Text("Connection Information", style: AppTextStyles.poppinsBold24),
          InfoCard(
            title: 'Email',
            subtitle: 'HtKlZ@example.com',
            icon: Icons.email,
          ),
          InfoCard(title: 'Phone', subtitle: '0123456789', icon: Icons.phone),
          InfoCard(
            title: 'Address',
            subtitle: '123 Main Street, City',
            icon: Icons.location_on,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 32.w,
            children: [
              SocailCard(image: "assets/icons/linkedIn.png"),
              SocailCard(image: 'assets/icons/github.png'),
            ],
          ),
        ],
      ),
    );
  }
}
