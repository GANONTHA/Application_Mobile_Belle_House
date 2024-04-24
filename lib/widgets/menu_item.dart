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
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            // spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.black12,
            // spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(2, 0), // changes position of shadow
          ),
        ],
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
