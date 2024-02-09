import 'package:simple_asks_flutter/models/answer.dart';

class Question {
  final String text;
  final List<Answer> answers;

  Question({required this.text, required this.answers});
}
