import 'package:flutter/material.dart';
import 'package:flutter_guide/quiz.dart';
import 'package:flutter_guide/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answer": [
        {'text': "Black", 'score': 5},
        {'text': "Red", 'score': 3},
        {'text': "Green", 'score': 10},
        {'text': "white", 'score': 7},
      ],
    },
    {
      "questionText": "What's the favorite animal?",
      "answer": [
        {'text': "Rabbit", 'score': 6},
        {'text': "Elephant", 'score': 5},
        {'text': "Lion", 'score': 7},
        {'text': "Tiger", 'score': 6},
      ],
    },
    {
      "questionText": "What's the favorite teachers?",
      "answer": [
        {'text': "Max", 'score': 5},
        {'text': "Mosh", 'score': 8},
        {'text': "Tarvrs", 'score': 3},
        {'text': "Others", 'score': 10},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more question!');
    } else {
      print("No more question!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("My First App")),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore),
    ));
  }
}
