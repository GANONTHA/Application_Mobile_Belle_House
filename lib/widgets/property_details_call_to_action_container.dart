import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CTAContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color bgColor;
  final Color iconColor;
  final Color borderColor;
  const CTAContainer(
      {super.key,
      required this.text,
      this.borderColor = AppColors.primaryColor,
      required this.icon,
      required this.bgColor,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Dimension.iconWidth80,
      height: Dimension.sizeFourthyFive + Dimension.paddingTen,
      padding: EdgeInsets.symmetric(
          horizontal: Dimension.paddingTen, vertical: Dimension.paddingTen),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(Dimension.sizeFive),
        border: Border.all(
          color: borderColor,
          width: 1.2,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(46, 21, 196, 255),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor, size: Dimension.sizeThirty),
          Text(
            text,
            style:
                TextStyle(color: iconColor, fontSize: Dimension.sizeEighteen),
          )
        ],
      ),
    );
  }
}
