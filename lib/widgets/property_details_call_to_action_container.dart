import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Dimension.iconWidth80,
      height: Dimension.sizeFourthyFive,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(Dimension.sizeFive),
      ),
      child: Row(
        children: [
          IconElement(
            icon: Icons.call,
            color: Colors.white,
            size: Dimension.sizeFithteen,
            radius: Dimension.sizeFive,
            bgColor: AppColors.primaryColor,
            height: Dimension.sizeFourthyFive,
          ),
          Text("Appeler l'Agent")
        ],
      ),
    );
  }
}
