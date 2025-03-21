import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.colour,
    this.cardChild,
    this.onPress,
    Key? key,
  }) : super(key: key);

  final Color colour;
  final Widget? cardChild; // Cho phép null để tránh lỗi
  final VoidCallback? onPress; // Sửa kiểu Function thành VoidCallback?

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          onPress, // Không cần kiểm tra null, vì VoidCallback? cho phép giá trị null
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
