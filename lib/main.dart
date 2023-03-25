import 'package:flutter/material.dart';

void main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    
    print(questionIndex);
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
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: answerQuestion,
            )
          ],
        ),
      )
    );
  }
}

class QuestionApp extends StatefulWidget {
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
