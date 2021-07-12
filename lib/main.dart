import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballNumber = 1;

  void getNewBallValue() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print('I got clicked - $ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: TextButton(
            onPressed: (){
              getNewBallValue();
            },
              child: Image.asset('images/ball$ballNumber.png')
          ),
        ),
      ),
    );
  }
}

