import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String name;
  final MaterialColor materialColor;
  final Function _ansQuesHandler;

  Answer(this.name, this.materialColor, this._ansQuesHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      child: ElevatedButton(
        onPressed: _ansQuesHandler,
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(materialColor),
        ),
      ),
    );
  }
}
