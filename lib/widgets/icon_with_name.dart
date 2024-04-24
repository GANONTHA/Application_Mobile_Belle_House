import 'package:flutter/material.dart';

class IconWithName extends StatelessWidget {
  final IconData icon;
  final int number;
  final String name;
  final Color? color;
  const IconWithName({
    super.key,
    required this.number,
    required this.name,
    required this.icon,
    this.color = Colors.black45,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text('$number'), Text(name)],
        )
      ],
    );
  }
}
