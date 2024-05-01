import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class MoreImage extends StatelessWidget {
  const MoreImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.iconWidth80,
      width: Dimension.iconWidth80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(Dimension.paddingTen)),
          image: const DecorationImage(
              image: AssetImage('assets/images/sofa.jpeg'), fit: BoxFit.cover)),
    );
  }
}
