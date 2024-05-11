import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:belle_house_mobile_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ImportantItem extends StatelessWidget {
  const ImportantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: Dimension.paddingTen,
          left: Dimension.paddingTen,
          right: Dimension.paddingTen),
      height: Dimension.pageViewDetails * 3,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimension.paddingTen),
          topRight: Radius.circular(Dimension.paddingTen),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    // color: AppColors.iconColor1,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimension.paddingTen),
                        topRight: Radius.circular(Dimension.paddingTen),
                      ),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/house-1.jpg'),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  right: 5,
                  top: 0,
                  child: IconElement(
                      size: 24,
                      icon: Icons.highlight_remove_outlined,
                      color: AppColors.secondaryColor,
                      radius: 50,
                      height: 40),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.paddingTen),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: Dimension.paddingTwenty,
                          ),
                          BigText(
                              text: 'Francophonie',
                              fontSize: Dimension.sizeThirtheen)
                        ],
                      ),
                      BigText(
                        text: 'En Location',
                        fontSize: Dimension.sizeThirtheen,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: Dimension.sizeFourthy,
                            width: Dimension.sizeFourthy,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.sizeFourthy),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/house-1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: Dimension.paddingTen),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(
                                text: "Belle House",
                                color: AppColors.primaryColor,
                                fontSize: Dimension.sizeThirtheen,
                              ),
                              SmallText(
                                text: 'Agence Immobiliere',
                                size: Dimension.sizeThirtheen,
                              )
                            ],
                          ),
                        ],
                      ),
                      BigText(
                        text: '200 000 FCFA/Mois',
                        fontSize: Dimension.sizeThirtheen,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
