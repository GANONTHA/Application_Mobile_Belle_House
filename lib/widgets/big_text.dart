import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double fontSize;
  TextOverflow overflow;
  BigText({
    super.key,
    this.color,
    required this.text,
    required this.fontSize,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        fontFamily: 'Roboto',
      ),
    );
  }
}
