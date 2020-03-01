import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 1) {
        _questionIndex++;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Colore preferito?', 'Animale preferito?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            RaisedButton(
              onPressed: () => _answerQuestion(),
              child: Text('Risposta 1'),
            ),
            RaisedButton(
              onPressed: () => _answerQuestion(),
              child: Text('Risposta 2'),
            ),
            RaisedButton(
              onPressed: () => _answerQuestion(),
              child: Text('Risposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
