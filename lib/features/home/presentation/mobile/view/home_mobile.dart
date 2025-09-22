import 'package:flutter/material.dart';
import 'package:saramji_cv/features/home/presentation/mobile/widgets/profile_slide_mobile.dart';
import 'package:saramji_cv/features/home/presentation/widgets/home_linear.dart';

class HomeMobile extends StatelessWidget {
  final PageController controller;
  const HomeMobile({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: HomeLinear()),
          Positioned.fill(child: ProfileSlideMobile(controller: controller)),
        ],
      ),
    );
  }
}
