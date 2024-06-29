import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // body: GradientContainer.purple(),
        body: GradientContainer(
            Color.fromARGB(255, 50, 6, 126), Color.fromARGB(255, 162, 18, 184)),
      ),
    ),
  );
}
