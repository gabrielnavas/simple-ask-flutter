import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
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
            Text('linha 1'),
            Text('linha 2'),
            Text('linha 3'),
            Text('linha 4'),
          ],
        ),
      ),
    );
  }
}
