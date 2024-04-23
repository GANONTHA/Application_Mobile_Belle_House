import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:belle_house_mobile_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPropertyPage extends StatelessWidget {
  const MainPropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first component
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          color: AppColors.iconColor1),
                      BigText(text: 'Niamey'),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.iconColor1,
                      ),
                    ],
                  ),
                  const Center(
                    child: IconElement(
                        bgColor: AppColors.secondaryColor,
                        icon: Icons.notifications,
                        color: AppColors.iconColor1),
                  )
                  //second component
                ]),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              // search bar
              Expanded(
                  flex: 6,
                  child: TextFielSearch(
                    controller: TextEditingController(),
                    onChanged: (value) {},
                  )),
              SizedBox(width: 10),
              // filter icon
              Expanded(
                flex: 1,
                child: const IconElement(
                    bgColor: AppColors.secondaryColor,
                    icon: Icons.filter_list,
                    color: AppColors.iconColor1),
              ),
            ],
          )
        ],
      ),
    );
  }
}
