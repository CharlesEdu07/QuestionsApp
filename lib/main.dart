import 'package:flutter/material.dart';
import './question.dart';

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
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _answerQuestion,
            )
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
