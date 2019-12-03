import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler ;
  final String answerText ;
  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        child: Text(this.answerText),
        color: Colors.blue,
        onPressed: this.selectHandler,
      ),
    );
  }
}
