import 'package:flutter/material.dart';

import 'package:simple_asks_flutter/models/question.dart';
import 'package:simple_asks_flutter/repository/question_repository.dart';
import 'package:simple_asks_flutter/widgets/questions.dart';

class _PerguntaAppState extends State<PerguntaApp> {
  int _questionIndexSelected = 0;
  final List<Question> _questions = QuestionRepository.getAll();
  double _totalScore = 0;

  void _incrementQuestionSelected() {
    setState(() {
      _questionIndexSelected++;
    });
  }

  void _endOfQuestions() {
    setState(() {
      _questionIndexSelected = 0;
    });
  }

  void _incrementTotalScore(double anwserScoreSelected) {
    _totalScore += anwserScoreSelected;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: _makeAppBarTitle(),
              centerTitle: true,
              backgroundColor: Colors.blue.shade200,
            ),
            body: Questions(
              _questions,
              _questionIndexSelected,
              _endOfQuestions,
              _incrementQuestionSelected,
              _incrementTotalScore,
              _totalScore,
            )));
  }

  Text _makeAppBarTitle() {
    return const Text(
      'Perguntas',
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
