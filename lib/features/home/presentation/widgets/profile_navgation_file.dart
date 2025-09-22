import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileNavgtionButton extends StatelessWidget {
  const ProfileNavgtionButton({
    super.key,
    required this.controller,
    this.getInTouch,
    this.viewProjects,
  });

  final PageController controller;
  final VoidCallback? getInTouch;
  final VoidCallback? viewProjects;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: viewProjects,
          child: Text("View Projects"),
        ),
        OutlinedButton(onPressed: getInTouch, child: Text("Get In Touch")),
      ],
    );
  }
}
