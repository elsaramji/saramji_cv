import 'package:flutter/material.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/home_linear.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/profile_slide.dart';

class HomeMobile extends StatelessWidget {
  final PageController controller=PageController();
  HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: HomeLinear()),
          Positioned.fill(child: ProfileSlide(controller: controller,)),
        ],
      ),
    );
  }
}
