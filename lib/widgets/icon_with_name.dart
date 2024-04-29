import 'package:belle_house_mobile_app/utils/dimensions.dart';
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
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: Dimension.sizeTwelve,
          color: color,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('$number'),
            Text(
              name,
              style: TextStyle(fontSize: Dimension.paddingTen),
            )
          ],
        )
      ],
    );
  }
}
