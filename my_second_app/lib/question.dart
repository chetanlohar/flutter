import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int queId;
  final String questionText;

  Question(this.queId, this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 100, 10, 100),
      child: Text(
        '$queId : $questionText',
        style: TextStyle(
          backgroundColor: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
