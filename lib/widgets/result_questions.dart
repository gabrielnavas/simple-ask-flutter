import 'package:flutter/material.dart';

class ResultQuestions extends StatelessWidget {
  final String message;
  final Function() onPress;
  final double totalScore;

  ResultQuestions(this.message, this.onPress, this.totalScore, {super.key});

  final ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    String score = totalScore.toStringAsFixed(2);

    return Column(children: [
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        child: const Text(
          'Acabaram as perguntas!',
          style: TextStyle(fontSize: 28),
        ),
      ),
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        child: Text(
          'Seu score foi de $score',
          style: const TextStyle(fontSize: 28),
        ),
      ),
      ElevatedButton(
        onPressed: onPress,
        style: style,
        child: const Text('Recomeçar questionário'),
      )
    ]);
  }
}
