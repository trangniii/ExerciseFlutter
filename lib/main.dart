import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  final colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan
  ];

  @override
  Widget build(BuildContext context) {
    final color = colors[Random().nextInt(7)];

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: color,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0), // Chiều cao của gạch ngăn cách
          child: Divider(
            color: Colors.white, // Màu gạch ngăn cách
            thickness: 2, // Độ dày gạch ngăn cách
            height: 2, // Khoảng cách giữa gạch và AppBar
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNo = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              int temp = Random().nextInt(5) + 1;
              while (temp == ballNo) temp = Random().nextInt(5) + 1;
              ballNo = temp;
            });
          },
          child: Image.asset('images/ball$ballNo.png'),
        ),
      ),
    );
  }
}
