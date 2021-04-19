import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function _ansQuesHandler;

  Answer(this._answerText, this._ansQuesHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      child: ElevatedButton(
        onPressed: _ansQuesHandler,
        child: Text(
          _answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
      ),
    );
  }
}
