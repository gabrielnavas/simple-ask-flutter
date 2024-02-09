import 'package:flutter/material.dart';
import 'package:simple_asks_flutter/models/answer.dart';
import 'package:simple_asks_flutter/models/question.dart';
import 'package:simple_asks_flutter/widgets/answer_button.dart';
import 'package:simple_asks_flutter/widgets/question_ask.dart';
import 'package:simple_asks_flutter/widgets/result_questions.dart';

class Questions extends StatelessWidget {
  final List<Question> _questions;
  final int _questionIndexSelected;
  final Function() _endOfQuestions;
  final Function() _incrementQuestionSelected;
  final Function(double anwserScoreSelected) _incrementTotalScore;
  final double _totalScore;

  bool get isQuestionSelected {
    return _questionIndexSelected < _questions.length;
  }

  const Questions(
      this._questions,
      this._questionIndexSelected,
      this._endOfQuestions,
      this._incrementQuestionSelected,
      this._incrementTotalScore,
      this._totalScore,
      {super.key});

  void _onPressAnswerButton(Answer button) {
    _incrementQuestionSelected();
    _incrementTotalScore(button.score);
  }

  @override
  Widget build(BuildContext context) {
    if (!isQuestionSelected) {
      return ResultQuestions('Acabou', _endOfQuestions, _totalScore);
    }
    final Question questionSelected =
        _questions.elementAt(_questionIndexSelected);
    final Ask questionWidget = Ask(questionSelected.text);
    final Iterable<AnswerButton> answersButtons = questionSelected.answers
        .map((answer) => AnswerButton(answer, _onPressAnswerButton));
    return Column(children: [questionWidget, ...answersButtons]);
  }
}
