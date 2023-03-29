import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;

  Result({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}