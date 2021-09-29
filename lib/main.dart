import 'dart:core';
//import 'dart:math';
import 'package:flutter/material.dart';
import 'package:simplecalc/calui.dart';

void main() {
  runApp(SimpleCalc());
}

class SimpleCalc extends StatefulWidget {
  const SimpleCalc({Key? key}) : super(key: key);

  @override
  _SimpleCalcState createState() => _SimpleCalcState();
}

class _SimpleCalcState extends State<SimpleCalc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(
              color: Colors.black,
              child: Text(
                'Simple Calculator',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
        ),
        body: CalUI(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
