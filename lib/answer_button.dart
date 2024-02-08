import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  AnswerButton(this.title, this.onPressed, {super.key});

  final ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Text(title),
    );
  }
}
