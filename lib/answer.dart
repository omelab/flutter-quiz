import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          selectHandler();
        },
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15)),
          padding:
              MaterialStateProperty.all(EdgeInsets.fromLTRB(20, 10, 20, 10)),
        ),
      ),
    );
  }
}
