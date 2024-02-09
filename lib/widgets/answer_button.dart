import 'package:flutter/material.dart';
import 'package:simple_asks_flutter/models/answer.dart';

class AnswerButton extends StatelessWidget {
  final Answer _answer;
  final Function(Answer answer) _onPressed;

  AnswerButton(this._answer, this._onPressed, {super.key});

  final ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _onPressed(_answer),
        style: style,
        child: Text(_answer.text),
      ),
    );
  }
}
