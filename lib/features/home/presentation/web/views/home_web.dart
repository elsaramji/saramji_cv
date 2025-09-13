import 'package:flutter/material.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/home_app_bar.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/home_linear.dart';
import 'package:saramji_cv/features/home/presentation/web/widgets/profile_slide.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWeb(),
      body: Stack(
        children: [
          // background
          Positioned.fill(child: HomeLinear()),
          // profile slide
          Positioned.fill(child: ProfileSlide()),
        ],
      ),
    );
  }
}

///mkdir -p lib/features/about/{data,domain,presentation}