import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class MoreImage extends StatelessWidget {
  final String image;
  const MoreImage({super.key, this.image = 'assets/images/sofa.jpeg'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.iconWidth80,
      width: Dimension.iconWidth80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(Dimension.paddingTen)),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }
}
