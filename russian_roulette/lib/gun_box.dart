import 'package:flutter/material.dart';

class Gun extends StatelessWidget {
  final double width;

  const Gun({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      './assets/images/gun.png',
      width: width,
    );
  }
}
