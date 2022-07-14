import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyquizApp());

class MyquizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyquizAppState();
  }
}

class _MyquizAppState extends State<MyquizApp> {
  var _questionsIndex = 0;
  static const _questions = [
    {
      'questionText': 'whats\'s your favorite color',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 8},
        {'text': 'Blue', 'score': 7}
      ],
    },
    {
      'questionText': 'whats\'s your favorite Sport',
      'answer': [
        {'text': 'Football', 'score': 4},
        {'text': 'Hockey', 'score': 3},
        {'text': 'Swimming', 'score': 10},
        {'text': 'Basketball', 'score': 8},
      ],
    },
    {
      'questionText': 'whats\'s your favorite Animal',
      'answer': [
        {'text': 'Rhino', 'score': 9},
        {'text': 'Zebra', 'score': 7},
        {'text': 'Lion', 'score': 10},
        {'text': 'Snake', 'score': 10}
      ],
    },
    {
      'questionText': 'whats\'s your favorite Name',
      'answer': [
        {'text': 'Rinku', 'score': 5},
        {'text': 'Shiinku', 'score': 9},
        {'text': 'Tinku', 'score': 7},
        {'text': 'Pinku', 'score': 10},
      ],
    }
  ];
  int _totalScore = 0;
  void _answerquestion(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    //questionsIndex++;
    // print("Answer is Chosen!!");
    // print(_questionsIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first Quiz App"),
        ),
        body: (_questionsIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                answerquestion: _answerquestion,
                questionsIndex: _questionsIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
