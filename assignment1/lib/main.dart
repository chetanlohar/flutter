import 'package:assignment1/text.dart';
import 'package:assignment1/textcontrol.dart';
import 'package:flutter/material.dart';

class Assign1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Assign1State();
  }
}

class Assign1State extends State<Assign1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: MyText('Assignment 1'),
        ),
        body: TextControl(),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(Assign1());
}
