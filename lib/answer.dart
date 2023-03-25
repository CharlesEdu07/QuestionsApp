import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;

  Answer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(text),
        onPressed: null,
      ),
    );
  }
}