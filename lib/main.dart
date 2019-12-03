import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What is the capital of Egypt ?',
      'answers': ['Cairo', 'London', 'Gaza'],
      'trueAnswer': 'Cairo'
    },
    {
      'questionText': 'What is the club that Mohamed Salah is playing ?',
      'answers': ['Real Madred', 'AC Roma', 'Liverpool'],
      'trueAnswer': 'Liverpool'
    },
    {
      'questionText': 'Who are Magdy Yacob ?',
      'answers': ['Scientist', 'Surgeon Doctor', 'Teacher', 'Player football'],
      'trueAnswer': 'Surgeon Doctor'
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(String selectedAnswer) {
    if (questions[_questionIndex]['trueAnswer'] == selectedAnswer) {
      _totalScore += 10;
    }

    setState(() {
      _questionIndex += 1;
    });

    print(selectedAnswer);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: (_questionIndex < questions.length)
          ? Quiz(
              questions: questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
            )
          : Result(totalScore: _totalScore, resetQuiz: _resetQuiz),
    ));
  }
}
