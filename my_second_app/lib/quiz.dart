import 'package:flutter/material.dart';
import 'package:my_second_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final int idx;
  final List<Map<String, Object>> questions;
  final Function ansQuesHandler;

  Quiz({
    @required this.questions,
    @required this.ansQuesHandler,
    @required this.idx,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(idx + 1, questions[idx]['question']),
        ...(questions[idx]['answers'] as List<String>).map((e) {
          return Answer(e, ansQuesHandler);
        }).toList(),
      ],
    );
  }
}
