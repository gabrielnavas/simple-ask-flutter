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
    final Map<String, Object> questionSelected = questions[_questionSelected];

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
            Question(questionSelected['text'].toString()),
            for (String answer in questionSelected['answers'] as List<String>)
              AnswerButton(answer, _incrementQuestionSelected)
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
