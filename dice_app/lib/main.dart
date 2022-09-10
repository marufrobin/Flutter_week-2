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

class DiceApp extends StatefulWidget {
  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    diceNum = 6;
                    print('dice Number: $diceNum');
                  });
                },
                child: Image.asset("image/dice$diceNum.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    diceNum = 3;
                    print('Right dice number: $diceNum');
                  });
                },
                child: Image.asset("image/dice$diceNum.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
