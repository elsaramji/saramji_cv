import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:saramji_cv/shared/presentation/mobile/luncher_mobile.dart';
import 'package:saramji_cv/shared/presentation/web/luncher_web.dart';

class Luncher extends StatelessWidget {
  const Luncher({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: ScreenBreakpoints(desktop: 1240, tablet: 720, watch: 0),
      mobile: (context) => LuncherMobile(),
      tablet: (context) => LuncherWeb(),
      desktop: (context) => LuncherWeb(),
    );
  }
}
