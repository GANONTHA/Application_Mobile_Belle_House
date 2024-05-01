import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class PropertyDetailsIcon extends StatelessWidget {
  const PropertyDetailsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.sizeFourthyFive,
      width: Dimension.sizeFourthyFive,
      padding: EdgeInsets.all(Dimension.paddingTwenty),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        border: Border.all(color: AppColors.primaryColor),
      ),
    );
  }
}
