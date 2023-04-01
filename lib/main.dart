import 'package:flutter/material.dart';
import './questionnaire.dart';
import './result.dart';

void main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final List<Map<String, Object>> _questions = const [
      {
        "text": "Qual é a sua cor favorita?",
        "answers": [
          {"text": "Preto", "score": 10},
          {"text": "Vermelho", "score": 5},
          {"text": "Verde", "score": 3},
          {"text": "Branco", "score": 1},
        ],
      },
      {
        "text": "Qual é o seu animal favorito?",
        "answers": [
          {"text": "Cachorro", "score": 10},
          {"text": "Gato", "score": 5},
          {"text": "Papagaio", "score": 3},
          {"text": "Peixe", "score": 1},
        ],
      },
      {
        "text": "Qual é a sua fruta favorita?",
        "answers": [
          {"text": "Maçã", "score": 10},
          {"text": "Banana", "score": 5},
          {"text": "Laranja", "score": 3},
          {"text": "Uva", "score": 1},
        ],
      }
  ];

  bool get hasQuestion {
    return _questionIndex < _questions.length;
  }

  void _answerQuestion(int score) {
    if (hasQuestion) {
      setState(() {
        _questionIndex++;
        _totalScore += score;
      });
    }
  }

  void restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
          onClicked: _answerQuestion,
        ) : Result(
          text: "Finalizado!",
          totalScore: _totalScore,
          restart: restart,
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
