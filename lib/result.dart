import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 15) {
      resultText = "Your are awesome and innocent!";
    } else if (resultScore <= 20) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 40) {
      resultText = "Your are ... strange?";
    } else {
      resultText = "Your are so Bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
