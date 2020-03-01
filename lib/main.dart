import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var questionIndex = 0;

  void answerQuestion(){
    questionIndex++;
    print(questionIndex);
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
            Text(questions[0]),
            RaisedButton(
              onPressed: () => answerQuestion(),
              child: Text('Risposta 1'),
            ),
            RaisedButton(
              onPressed: () => answerQuestion(),
              child: Text('Risposta 2'),
            ),
            RaisedButton(
              onPressed: () => answerQuestion(),
              child: Text('Risposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
