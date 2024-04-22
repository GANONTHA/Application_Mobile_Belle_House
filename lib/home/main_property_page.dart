import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class MainPropertyPage extends StatelessWidget {
  const MainPropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first component
                  Row(
                    children: [
                      Icon(Icons.location_on, color: AppColors.iconColor1),
                      BigText(text: 'Niamey'),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.iconColor1,
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Icon(
                        Icons.notifications,
                        color: AppColors.iconColor1,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                  //second component
                ]),
          ),
        ],
      ),
    );
  }
}
