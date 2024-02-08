import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  void _incrementarPerguntaSelecionada() {
    setState(() {
      if (_perguntaSelecionada + 1 < perguntas.length) _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Perguntas',
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade200,
        ),
        body: Column(
          children: [
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _incrementarPerguntaSelecionada,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _incrementarPerguntaSelecionada,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _incrementarPerguntaSelecionada,
              child: Text('Resposta 3'),
            ),
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
