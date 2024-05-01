import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class PropertyDetailsIcon extends StatelessWidget {
  final int number;
  final String item;
  final IconData icon;
  const PropertyDetailsIcon(
      {super.key,
      required this.number,
      required this.item,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.sizeSeventhy,
      width: Dimension.iconWidth80,
      padding: EdgeInsets.all(Dimension.sizeEight),
      margin: EdgeInsets.only(right: Dimension.sizeFive),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          border: Border.all(color: AppColors.primaryColor),
          borderRadius:
              BorderRadius.all(Radius.circular(Dimension.paddingTen))),
      child: Column(
        children: [
          Icon(
            icon,
            color: AppColors.primaryColor,
          ),
          Text(
            "$number $item",
            style: const TextStyle(fontSize: 10, color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
