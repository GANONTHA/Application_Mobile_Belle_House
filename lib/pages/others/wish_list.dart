import 'package:belle_house_mobile_app/pages/properties/houses_list.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/important_item.dart';
import 'package:belle_house_mobile_app/widgets/nearly_property.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Important extends StatelessWidget {
  const Important({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: Column(
            children: [
              //heading
              Expanded(
                  flex: 1,
                  child: Center(
                      child: BigText(text: "Mes Favories", fontSize: 25))),
              Expanded(
                flex: 6,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ImportantItem();
                    }),
              ),
            ],
          )),
    );
  }
}
