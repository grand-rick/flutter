import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  num activeDice = 1;
  void rollDice() {
    setState(() {
      activeDice = 1 + (activeDice % 6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Made by Patrick',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            backgroundColor: Colors.black45,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          './assets/images/dice-$activeDice.png',
          width: 200,
          height: 200,
        ),
        // const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
