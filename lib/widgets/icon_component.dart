import 'package:flutter/material.dart';

class IconElement extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final Color? bgColor;
  const IconElement({
    super.key,
    required this.icon,
    required this.color,
    this.size = 35,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              // spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            )
          ]),
      child: Center(
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
