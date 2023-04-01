import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final int totalScore;

  Result({required this.text, required this.totalScore});

  String get resultPhrase {
    String resultText = 'Você fez $totalScore pontos!';
    if (totalScore <= 8) {
      resultText = 'Você é bom!';
    } else if (totalScore <= 12) {
      resultText = 'Você é normal!';
    } else if (totalScore <= 16) {
      resultText = 'Você é ruim!';
    } else {
      resultText = 'Você é péssimo!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}