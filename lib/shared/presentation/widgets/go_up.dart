

import 'package:flutter/material.dart';

class GoDown extends StatelessWidget {
  const GoDown({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (pageController.page != 5.0) {
          pageController.nextPage(
            duration: Duration(seconds: 1),
            curve: Curves.linear,
          );
        }
      },
      child: Icon(Icons.arrow_downward),
    );
  }
}
