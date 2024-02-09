import 'package:simple_asks_flutter/models/answer.dart';
import 'package:simple_asks_flutter/models/question.dart';

class QuestionRepository {
  static final List<Map<String, Object>> data = [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': [
        {
          'text': 'Preto',
          'score': 7.17,
        },
        {
          'text': 'Vermelho',
          'score': 5.21,
        },
        {
          'text': 'Verde',
          'score': 7.11,
        },
        {
          'text': 'Branco',
          'score': 9.13,
        }
      ],
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': [
        {
          'text': 'Coelho',
          'score': 6.11,
        },
        {
          'text': 'Cobra',
          'score': 3.11,
        },
        {
          'text': 'Elefante',
          'score': 1.13,
        },
        {
          'text': 'Leão',
          'score': 8.11,
        }
      ],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': [
        {
          'text': 'Maria',
          'score': 5.61,
        },
        {
          'text': 'João',
          'score': 7.11,
        },
        {
          'text': 'Leo',
          'score': 6.21,
        },
        {
          'text': 'Pedro',
          'score': 9.15,
        }
      ],
    },
  ];

  static List<Question> getAll() {
    return List<Question>.of(data.map((question) => Question(
        text: question['text'] as String,
        answers: (question['answers'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(answer['text'] as String, answer['score'] as double))
            .toList())));
  }
}
