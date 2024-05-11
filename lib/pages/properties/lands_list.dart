import 'package:belle_house_mobile_app/pages/properties/all_lands.dart';
import 'package:belle_house_mobile_app/pages/properties/land_details.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/land.dart';
import 'package:belle_house_mobile_app/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandList extends StatelessWidget {
  const LandList({super.key});

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
                    text: 'TOUTES LES PARCELLES ',
                    fontSize: Dimension.sizeFourteen,
                  ),
                ),
                MenuItem(
                  action: () => {Get.to(() => const AllLands())},
                  title: 'Voir+',
                  color: AppColors.iconColor1,
                ),
              ],
            ),
            SizedBox(height: Dimension.sizeFive),
            GestureDetector(
              onTap: () {
                Get.to(() => const LandDetailState());
              },
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding:
                            EdgeInsets.only(bottom: Dimension.paddingTwenty),
                        child: Land(
                            image: Image.asset('assets/images/land-1.jpg'),
                            name: 'Parcelle',
                            seller: 'Belle House',
                            area: 300,
                            price: 30,
                            textColor: AppColors.primaryColor));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
