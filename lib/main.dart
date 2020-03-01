import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(questionIndex < 1)
      questionIndex++;
    });
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
            Text(questions[questionIndex]),
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
