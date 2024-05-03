import 'package:belle_house_mobile_app/pages/properties/furniture_details.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/furniture.dart';
import 'package:belle_house_mobile_app/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FurnitureList extends StatelessWidget {
  const FurnitureList({super.key});

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
                    text: 'TOUS LES MEUBLES',
                    fontSize: Dimension.sizeFourteen,
                  ),
                ),
                const MenuItem(
                  title: 'Voir+',
                  color: AppColors.iconColor1,
                ),
              ],
            ),
            SizedBox(height: Dimension.sizeFive),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => const MeubleDetails());
                    },
                    child: Padding(
                        padding:
                            EdgeInsets.only(bottom: Dimension.paddingTwenty),
                        child: Furniture(
                          image: Image.asset('assets/images/sofa.jpeg'),
                          name: "Sofa",
                          seller: "seller",
                          color: 'Rouge',
                          price: 30000,
                          textColor: AppColors.primaryColor,
                        )),
                  );
                })
          ],
        ),
      ),
    );
  }
}
