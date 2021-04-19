import 'package:assignment1/text.dart';
import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String text = 'This is my First Flutter Assignment.';

  void _upateText() {
    setState(() {
      text = 'This is updated text.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: MyText(text),
        ),
        RaisedButton(
          onPressed: _upateText,
          child: MyText('Update'),
        ),
      ],
    );
  }
}
