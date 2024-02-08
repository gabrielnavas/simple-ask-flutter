import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  void incrementarPerguntaSelecionada() {
    setState(() {
      if (perguntaSelecionada + 1 < perguntas.length) perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            perguntas[perguntaSelecionada],
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade200,
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: incrementarPerguntaSelecionada,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: incrementarPerguntaSelecionada,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: incrementarPerguntaSelecionada,
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
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
