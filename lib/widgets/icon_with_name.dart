import 'package:flutter/material.dart';

class IconWithName extends StatelessWidget {
  final Icon icon;
  final int number;
  final String name;
  const IconWithName(
      {super.key,
      required this.number,
      required this.name,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text('$number'), Text(name)],
        )
      ],
    );
  }
}
