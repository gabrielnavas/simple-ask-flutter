import 'package:flutter/material.dart';
import 'package:simple_asks_flutter/answer_button.dart';
import 'package:simple_asks_flutter/question.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _questionSelected = 0;

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  void _incrementQuestionSelected() {
    setState(() {
      if (_questionSelected + 1 < perguntas.length) _questionSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Perguntas',
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade200,
        ),
        body: Column(
          children: [
            Question(perguntas[_questionSelected]),
            AnswerButton('Resposta 1', _incrementQuestionSelected),
            AnswerButton('Resposta 2', _incrementQuestionSelected),
            AnswerButton('Resposta 3', _incrementQuestionSelected),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
