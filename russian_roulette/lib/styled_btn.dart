import 'package:flutter/material.dart';

class StyledBtn extends StatelessWidget {
  final String numText;
  final void Function()? btnPressed;

  const StyledBtn({super.key, required this.numText, required this.btnPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: btnPressed,
        child: Text(
          numText,
          style: const TextStyle(fontSize: 28, color: Colors.black),
        ));
  }
}
