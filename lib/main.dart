import 'package:flutter/material.dart';

import 'package:zero_app/question.dart';
import 'package:zero_app/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = [
    //oppure static const
    {
      'questionText': 'Colore preferito?',
      'answers': ['Black', 'Red', 'Green'],
    },
    {
      'questionText': 'Animale preferito?',
      'answers': ['Mucca', 'Cane', 'Gatto', 'Elefante'],
    },
    {
      'questionText': 'Antonio preferito?',
      'answers': ['Antonio', 'Antonio', 'Antonio'],
    }
  ];

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //var questions = ['Colore preferito?', 'Animale preferito?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              _questions[_questionIndex]['questionText'],
            ),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
