import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.red,
      ),
      body: Dice(),
    ),
  ));
}


class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftDie = 1;
  int rightDie = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDie = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDie.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDie = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDie.png'),
            ),
          ),
        ],
      ),
    );
  }
}
