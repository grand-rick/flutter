import 'package:flutter/material.dart';
import 'package:russian_roulette/gun_box.dart';
import 'package:russian_roulette/styled_btn.dart';
import 'package:russian_roulette/top_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  void onBtnPressed() {
    print('button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.deepOrange, Color.fromARGB(255, 243, 152, 34)]),
      ),
      child: Column(
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
      ),
    );
  }
}
