import 'package:belle_house_mobile_app/utils/dimensions.dart';
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
      width: Dimension.sizeSeventhy,
      height: Dimension.sizeThirty,
      margin: EdgeInsets.all(Dimension.sizeFive),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(Dimension.sizeFive),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            // spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.black12,
            // spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1, 0), // changes position of shadow
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
