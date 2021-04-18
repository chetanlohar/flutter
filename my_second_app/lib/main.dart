import 'package:flutter/material.dart';
import 'package:my_second_app/answer.dart';
import 'package:my_second_app/question.dart';

class ChetanApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChetanAppState();
  }
}

class _ChetanAppState extends State<ChetanApp> {
  int _idx = 0;
  Question _q = Question(0, 'Click to show questions');

  List<Question> _questions = [
    Question(1, 'What is your name?'),
    Question(2, 'What is you do?'),
    Question(3, 'What is your city?'),
  ];

  void _ansQues() {
    print('Pre: $_idx');
    setState(() {
      _q = Question(_questions[_idx].queId, _questions[_idx].questionText);
      _idx++;
      if (_idx == 3) {
        print('equal to 3');
        _idx = 0;
      }
    });
    print('Post: $_idx');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rental Management'),
        ),
        body: Column(
          children: [
            Question(_questions[_idx].queId, _questions[_idx].questionText),
            Answer('Green', Colors.green, _ansQues),
            Answer('Blue', Colors.blue, _ansQues),
            Answer('Red', Colors.red, _ansQues),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(ChetanApp());
}
