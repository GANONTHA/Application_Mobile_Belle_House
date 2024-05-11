import 'package:belle_house_mobile_app/pages/properties/all_houses.dart';
import 'package:belle_house_mobile_app/pages/properties/house_details.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/menu_item.dart';
import 'package:belle_house_mobile_app/widgets/nearly_property.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Houses extends StatelessWidget {
  const Houses({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: Dimension.paddingTen,
                  ),
                  child: BigText(
                    text: 'TOUTES LES MAISONS',
                    fontSize: Dimension.sizeFourteen,
                  ),
                ),
                MenuItem(
                  action: () => {Get.to(() => const AllHouses())},
                  title: 'Voir+',
                  color: AppColors.iconColor1,
                ),
              ],
            ),
            SizedBox(height: Dimension.sizeFive),
            GestureDetector(
              onTap: () {
                Get.to(() => const PopularPropetyDetails());
              },
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: Dimension.paddingTwenty),
                      child: NearlyProperty(
                        image: Image.asset('assets/images/house-2.jpg'),
                        price: 500000,
                        area: 'Banifandou',
                        bed: 02,
                        toilette: 05,
                        type: 'Location',
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
