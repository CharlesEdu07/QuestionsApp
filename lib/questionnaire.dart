import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './question.dart';

class Questionnaire extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final void Function(int) onClicked;

  Questionnaire({
    required this.questionIndex,
    required this.questions,
    required this.onClicked,
  });

  bool get hasQuestion {
    return questionIndex < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasQuestion
      ? questions[questionIndex].cast()["answers"]
      as List<Map<String, Object>>
      : [];

    return Column(
      children: [
        Question(questions[questionIndex]["text"].toString()),
        ...answers.map((ans) {
          return Answer(
            ans["text"].toString(),
            () => onClicked(int.parse(ans["score"].toString())),
          );
        }).toList(),
      ],
    );
  }
}