
import 'package:flutter/material.dart';

class GoUp extends StatelessWidget {
  const GoUp({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (pageController.page != 0.0) {
          pageController.previousPage(
            duration: Duration(seconds: 1),
            curve: Curves.linear,
          );
        }
      },
      child: Icon(Icons.arrow_upward),
    );
  }
}
