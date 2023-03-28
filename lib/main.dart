import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App de Perguntas'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer("Resposta 1", _answerQuestion),
            Answer("Resposta 2", _answerQuestion),
            Answer("Resposta 3", _answerQuestion),
          ],
        ),
      )
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
