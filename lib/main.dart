import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text('Ask Me Anything')),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeBallFace(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      // print('ball = $ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: () {
        changeBallFace();
    },
      child: Image.asset('images/ball$ballNumber.png'),
    ),);
  }
}

