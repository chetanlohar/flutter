import 'package:flutter/material.dart';
import 'package:my_second_app/question.dart';
import 'package:my_second_app/quiz.dart';
import 'package:my_second_app/result.dart';

class ChetanApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChetanAppState();
  }
}

class _ChetanAppState extends State<ChetanApp> {
  int _idx = 0;
  Question _q = Question(0, 'Click to show questions');

  List<Map<String, Object>> map = [
    {
      'question': 'What is your favriote colour?',
      'answers': ['Green', 'Blue', 'Red', 'Black', 'White'],
    },
    {
      'question': 'Which is your favriote city?',
      'answers': ['Mumbai', 'Pune', 'Nashik'],
    },
  ];

  // List<Question> _questions = [
  //   Question(1, 'What is your name?'),
  //   Question(2, 'What is you do?'),
  //   Question(3, 'What is your city?'),
  // ];

  void _ansQues() {
    print('Pre: $_idx');
    setState(() {
      _q = Question(_idx, map[_idx]['question']);
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
        body: _idx < map.length
            ? Quiz(
                questions: map,
                idx: _idx,
                ansQuesHandler: _ansQues,
              )
            : Result(),
      ),
    );
  }
}

void main() {
  runApp(ChetanApp());
}
