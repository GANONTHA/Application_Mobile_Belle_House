import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImportantItem extends StatelessWidget {
  const ImportantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: Dimension.paddingTen,
          left: Dimension.paddingTen,
          right: Dimension.paddingTen),
      height: Dimension.pageViewDetails * 2.8,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimension.paddingTen),
          topRight: Radius.circular(Dimension.paddingTen),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              // color: AppColors.iconColor1,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.paddingTen),
                  topRight: Radius.circular(Dimension.paddingTen),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/house-1.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.paddingTen),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('data'),
                  Text('data'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
