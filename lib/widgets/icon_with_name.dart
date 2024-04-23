import 'package:flutter/material.dart';

class IconWithName extends StatelessWidget {
  final String bedroom;
  final String bed;
  const IconWithName({super.key, required this.bedroom, required this.bed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.bedroom_baby),
        Row(
          children: [Text(bed), Text('02 Chambre')],
        )
      ],
    );
  }
}
