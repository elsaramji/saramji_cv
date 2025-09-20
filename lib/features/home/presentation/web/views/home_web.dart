import 'package:flutter/material.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/home_linear.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/profile_slide.dart';

class HomeWeb extends StatelessWidget {
  final PageController controller;
  static const int index = 0;
  const HomeWeb({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          // background
          Positioned.fill(child: HomeLinear()),
          // profile slide
          Positioned.fill(child: ProfileSlide(controller: controller)),
        ],
      
    );
  }
}

///mkdir -p lib/features/about/{data,domain,presentation}
