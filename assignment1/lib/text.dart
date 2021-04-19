import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String myText;
  MyText(this.myText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(myText),
    );
  }
}
