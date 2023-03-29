import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionIndex = 0;
  final List _questions = const [
      {
        "text": "Qual é a sua cor favorita?",
        "answers": ["Preto", "Vermelho", "Verde", "Branco"],
      },
      {
        "text": "Qual é o seu animal favorito?",
        "answers": ["Cachorro", "Gato", "Papagaio", "Peixe"],
      },
      {
        "text": "Qual é a sua fruta favorita?",
        "answers": ["Maçã", "Banana", "Laranja", "Uva"],
      }
    ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = _questions[_questionIndex].cast()["answers"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App de Perguntas'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]["text"].toString()),
            ...answers.map((answer) => Answer(answer, _answerQuestion))
            .toList(),
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
