import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:belle_house_mobile_app/widgets/property_details_icon.dart';
import 'package:flutter/material.dart';

class PopularPropetyDetails extends StatelessWidget {
  const PopularPropetyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.popularFoodImageHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/house-1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //back button and like button
          Positioned(
            left: Dimension.paddingTwenty,
            right: Dimension.paddingTwenty,
            top: Dimension.sizeThirtyFive,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconElement(
                  icon: Icons.arrow_back,
                  color: AppColors.iconColor1,
                  size: Dimension.paddingTwenty,
                  radius: Dimension.paddingTwenty,
                  bgColor: AppColors.secondaryColor,
                  height: Dimension.sizeThirtyFive,
                ),
                IconElement(
                  icon: Icons.favorite,
                  color: Colors.red,
                  size: Dimension.paddingTwenty,
                  radius: Dimension.paddingTwenty,
                  bgColor: AppColors.secondaryColor,
                  height: Dimension.sizeThirtyFive,
                )
              ],
            ),
          ),
          //body container
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.popularFoodImageHeight - Dimension.paddingTwenty,
            child: Container(
              padding: EdgeInsets.all(Dimension.paddingTwenty),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.sizeFithteen),
                  topRight: Radius.circular(Dimension.sizeFithteen),
                ),
              ),
              child: Column(
                children: [
                  //price and type
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: "VENTE",
                        color: Colors.black,
                        fontSize: Dimension.sizeFourteen,
                      ),
                      BigText(
                        text: '30 MILLIONS',
                        color: AppColors.primaryColor,
                        fontSize: Dimension.sizeFourteen,
                      ),
                    ],
                  ),
                  //area and city
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.textColor,
                        size: Dimension.sizeFithteen,
                      ),
                      Text(
                        "Naimey",
                        style: TextStyle(fontSize: Dimension.sizeFithteen),
                      ),
                      const Text('-'),
                      const Text("Banifandou")
                    ],
                  ),
                  //details
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PropertyDetailsIcon(
                        number: 4,
                        item: "chambre",
                        icon: Icons.king_bed,
                      ),
                      PropertyDetailsIcon(
                        number: 2,
                        item: "Salons",
                        icon: Icons.living,
                      ),
                      PropertyDetailsIcon(
                        number: 4,
                        item: "Toilettes",
                        icon: Icons.shower,
                      ),
                      PropertyDetailsIcon(
                        number: 10,
                        item: "pizzas",
                        icon: Icons.local_pizza,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Description
        ],
      ),
    );
  }
}
