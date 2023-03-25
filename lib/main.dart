import 'package:flutter/material.dart';

void main() => runApp(QuestionApp());

class QuestionApp extends StatelessWidget {
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
            Text(questions.elementAt(0)),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: null,
            )
          ],
        ),
      )
    );
  }
}
