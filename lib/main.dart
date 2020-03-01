import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = ['Colore preferito?', 'Animale preferito?'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('The question!'),
            RaisedButton(
              onPressed: null,
              child: Text('Risposta 1'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Risposta 2'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Risposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
