import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/important_item.dart';
import 'package:flutter/material.dart';

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
                    child: BigText(
                      text: "Mes Favories",
                      fontSize: Dimension.sizeTwelve * 2,
                    ),
                  )),
              Expanded(
                flex: 7,
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
