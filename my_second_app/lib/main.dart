import 'package:flutter/material.dart';
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
            Question(_q.queId, _q.questionText),
            ElevatedButton(
              onPressed: _ansQues,
              child: Text(
                'Next',
                textAlign: TextAlign.center,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(ChetanApp());
}
