import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? bgColor;

  const MenuItem(
      {super.key,
      required this.title,
      this.color = Colors.white,
      this.bgColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 30,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: color, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
