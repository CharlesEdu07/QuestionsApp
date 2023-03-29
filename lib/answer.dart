import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onClicked;

  Answer(this.text, this.onClicked);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: ElevatedButton(
        onPressed: () => onClicked(),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        child: Text(text)
      ),
    );
  }
}