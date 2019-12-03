import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result({this.totalScore,this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: Text(
          'You did it ' + totalScore.toString(),
          style: TextStyle(fontSize: 35),
        )),
        Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
          onPressed: resetQuiz,
          child: Text('Start Quiz'),
        ))
      ],
    );
  }
}
