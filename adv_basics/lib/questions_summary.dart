import 'package:adv_basics/question_identifier.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            bool isCorrectAnswer = data['answer'] == data['chosenAnswer'];
            int questionIndex = (data['question_index'] as int) + 1;
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                      isCorrectAnswer: isCorrectAnswer,
                      questionIndex: questionIndex),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question']) as String,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (data['chosenAnswer']) as String,
                          style: TextStyle(
                            color: isCorrectAnswer
                                ? Colors.green
                                : const Color.fromARGB(255, 245, 101, 91),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (data['answer']) as String,
                          style: const TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
