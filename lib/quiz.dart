import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerquestion;
  final int questionsIndex;
  Quiz(
      {required this.questions,
      required this.answerquestion,
      required this.questionsIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionsIndex]['questionText'] as String,
        ),
        ...(questions[questionsIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerquestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
