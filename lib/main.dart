import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart'; // Import InputPage từ file riêng

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tắt banner debug
      theme: ThemeData.dark(), // Sử dụng theme tối
      home: InputPage(),
    );
  }
}
