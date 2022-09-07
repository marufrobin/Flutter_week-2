import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {  },
                  child: Image.asset("image/dice1.png"),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Image.asset("image/dice2.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
