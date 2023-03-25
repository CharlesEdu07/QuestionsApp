import 'package:flutter/material.dart';

void main() => runApp(QuestionApp());

class QuestionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App de Perguntas'),
        ),
        body: Text('Olá Flutter!'),
      )
    );
  }
}
