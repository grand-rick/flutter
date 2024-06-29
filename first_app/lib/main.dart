import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  const Color color1 = Color.fromARGB(255, 50, 6, 126);
  const Color color2 = Color.fromARGB(255, 162, 18, 184);
  runApp(
    const MaterialApp(
      home: Scaffold(
        // body: GradientContainer.purple(),
        body: GradientContainer(color1, color2),
      ),
    ),
  );
}