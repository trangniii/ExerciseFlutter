import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffe164aa),
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffe73fd9),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0), // Chiều cao của gạch ngăn cách
            child: Divider(
              color: Colors.white, // Màu gạch ngăn cách
              thickness: 2, // Độ dày gạch ngăn cách
              height: 2, // Khoảng cách giữa gạch và AppBar
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          //Get students to create the second die as a challenge
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
