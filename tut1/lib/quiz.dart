import 'package:flutter/material.dart';
import 'package:tut1/answer.dart';
import 'package:tut1/questions.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerquestion;
  final List<Map<String, Object>> question;
  final int questionIndex;

  const Quiz(
      {super.key,
      required this.answerquestion,
      required this.question,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'] as String),
        ...(question[questionIndex]["answerText"] as List<String>)
            .map((answer) {
          return Answer(answerquestion, answer);
        })
      ],
    );
  }
}
