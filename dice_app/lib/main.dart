import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'Dice',
          ),
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var diceNum = 1;

    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  // diceNum = 3;
                  
                },
                child: Image.asset("image/dice$diceNum.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('Right button got pressed.');
                },
                child: Image.asset("image/dice2.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
