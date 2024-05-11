import 'package:belle_house_mobile_app/pages/home/property_page_builder.dart';
import 'package:belle_house_mobile_app/pages/properties/house_details.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/menu_item.dart';
import 'package:belle_house_mobile_app/widgets/nearly_property.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPropertyPage extends StatelessWidget {
  const MainPropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //popular properties
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Dimension.paddingTen,
                        ),
                        child: BigText(
                          text: 'PLUS POPULAIRES',
                          fontSize: Dimension.sizeFourteen,
                        ),
                      ),
                      MenuItem(
                        action: () => {},
                        title: 'Voir+',
                        color: AppColors.iconColor1,
                      ),
                    ],
                  ),
                  // SizedBox(height: Dimension.sizeFive),
                  //listings

                  GestureDetector(
                      onTap: () {
                        Get.to(() => const PopularPropetyDetails());
                      },
                      child: const PropertyPageBuilder()),
                  //near you
                  // SizedBox(height: Dimension.sizeFive),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: Dimension.paddingTen),
                        child: BigText(
                          text: 'PROCHES DE VOUS',
                          fontSize: Dimension.sizeFourteen,
                        ),
                      ),
                      MenuItem(
                        action: () => {},
                        title: 'Voir+',
                        color: AppColors.iconColor1,
                      ),
                    ],
                  ),
                  SizedBox(height: Dimension.sizeFive),
                  //listings
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.only(bottom: Dimension.paddingTen),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const PopularPropetyDetails());
                            },
                            child: NearlyProperty(
                              image: Image.asset('assets/images/house-2.jpg'),
                              price: 500000,
                              area: 'Banifandou',
                              bed: 02,
                              toilette: 05,
                              type: 'Location',
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
