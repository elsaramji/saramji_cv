import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 84.r,
      backgroundImage: NetworkImage(
        "https://avatars.githubusercontent.com/u/90051301?v=4",
      ),
    );
  }
}
