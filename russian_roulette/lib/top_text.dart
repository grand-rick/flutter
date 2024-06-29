import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  final String text;

  const TopText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        wordSpacing: 2,
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
