import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;

  const QuestionIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Colors.green
            : const Color.fromARGB(255, 245, 101, 91),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        (questionIndex).toString(),
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
