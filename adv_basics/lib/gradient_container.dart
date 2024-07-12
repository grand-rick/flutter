import 'package:adv_basics/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  const GradientContainer(this.color1, this.color2, {super.key});

  void logPressed() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            './assets/images/flutter-logo.png',
            width: 200,
          ),
          const Center(
            child: StyledText(text: 'Learn flutter the fun way!'),
          ),
          OutlinedButton(
            onPressed: logPressed,
            child: const StyledText(text: 'Start Quiz'),
          )
        ],
      ),
    );
  }
}
