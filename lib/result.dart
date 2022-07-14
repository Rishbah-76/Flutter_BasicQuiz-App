import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuizHandler;
  Result(this.totalScore, this.resetQuizHandler);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 10) {
      resultText = "You are so good and Innocent! ";
    } else if (totalScore <= 15) {
      resultText = "You are pretty likable";
    } else if (totalScore <= 20) {
      resultText = "You are...Strange";
    } else {
      resultText = "You are Bad";
    }
    return resultText as String;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Let's see How you did",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(8.0),
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 32,
              color: Colors.greenAccent,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: resetQuizHandler,
          child: const Text("Reset the Quiz"),
        ),
      ],
    );
  }
}
