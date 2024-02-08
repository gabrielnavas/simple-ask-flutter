import 'package:flutter/material.dart';
import 'package:simple_asks_flutter/answer_button.dart';
import 'package:simple_asks_flutter/question.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _questionSelected = 0;

  final List<Map<String, Object>> questions = [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];

  void _incrementQuestionSelected() {
    setState(() {
      _questionSelected++;
    });
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
        body: Column(
          children: _makeBodyChildren(),
        ),
      ),
    );
  }

  Text _makeAppBarTitle() {
    return const Text(
      'Perguntas',
    );
  }

  List<Widget> _makeBodyChildren() {
    final Map<String, Object> questionSelected = questions[_questionSelected];
    final Question questionWidget =
        Question(questionSelected['text'].toString());
    final Iterable<AnswerButton> answersButtons =
        (questionSelected['answers'] as List<String>)
            .map((answer) => AnswerButton(answer, _incrementQuestionSelected));
    return [questionWidget, ...answersButtons];
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
