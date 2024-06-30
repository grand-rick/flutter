import 'package:adv_basics/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        body: GradientContainer(
      Color.fromARGB(255, 47, 9, 113),
      Color.fromARGB(255, 91, 18, 216),
    )),
  ));
}
