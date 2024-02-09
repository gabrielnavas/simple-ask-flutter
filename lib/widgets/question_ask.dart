import 'package:flutter/material.dart';

class Ask extends StatelessWidget {
  final String text;

  const Ask(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
