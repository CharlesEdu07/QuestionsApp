import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './question.dart';

class Questionnaire extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final void Function() answer;

  Questionnaire({
    required this.questionIndex,
    required this.questions,
    required this.answer,
  });

  bool get hasQuestion {
    return questionIndex < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = hasQuestion
      ? questions[questionIndex].cast()["answers"]
      : [];

    return Column(
      children: [
        Question(questions[questionIndex]["text"].toString()),
        ...answers.map((answer) => Answer(answer, this.answer))
        .toList(),
      ],
    );
  }
}