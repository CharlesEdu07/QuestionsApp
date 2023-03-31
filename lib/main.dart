import 'package:flutter/material.dart';
import './questionnaire.dart';
import './result.dart';

void main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionIndex = 0;
  final List<Map<String, Object>> _questions = const [
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

  bool get hasQuestion {
    return _questionIndex < _questions.length;
  }

  void _answerQuestion() {
    if (hasQuestion) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App de Perguntas'),
        ),
        body: hasQuestion ? Questionnaire(
          questionIndex: _questionIndex,
          questions: _questions,
          answer: _answerQuestion,
        ) : Result(
          text: "Finalizado!"
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
