import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question(this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
