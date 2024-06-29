import 'package:flutter/material.dart';

class StyledBtn extends StatelessWidget {
  final String numText;
  void Function()? btnPressed;

  StyledBtn(
      {super.key, required this.numText, required void Function()? btnPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: btnPressed,
        child: Text(
          numText,
          style: const TextStyle(fontSize: 28, color: Colors.white),
        ));
  }
}
