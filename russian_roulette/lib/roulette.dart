import 'package:flutter/material.dart';
import 'package:russian_roulette/styled_btn.dart';
import 'package:russian_roulette/top_text.dart';
import 'package:russian_roulette/gun_box.dart';

class Roulette extends StatefulWidget {
  const Roulette({super.key});

  @override
  State<Roulette> createState() {
    return _RouletteState();
  }
}

class _RouletteState extends State<Roulette> {
  bool? result;
  void onBtnPressed() {
    // setState(() {
    //   print('button pressed');
    // });
    print('button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopText(text: 'Russian Roulette'),
          ],
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gun(width: 150),
            Gun(width: 150),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StyledBtn(numText: '1', btnPressed: onBtnPressed),
            StyledBtn(numText: '2', btnPressed: onBtnPressed),
          ],
        ),
        const SizedBox(height: 40),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gun(width: 150),
            Gun(width: 150),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StyledBtn(numText: '3', btnPressed: onBtnPressed),
            StyledBtn(numText: '4', btnPressed: onBtnPressed),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TopText(text: 'Score: 0'),
          ],
        ),
      ],
    );
  }
}
