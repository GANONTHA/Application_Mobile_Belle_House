import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:belle_house_mobile_app/widgets/menu_item.dart';
import 'package:belle_house_mobile_app/widgets/nearly_property.dart';
import 'package:belle_house_mobile_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class Houses extends StatelessWidget {
  const Houses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          //heading
          Container(
            margin: EdgeInsets.only(
              top: Dimension.sizeThirty,
              left: Dimension.paddingTen,
              right: Dimension.paddingTen,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first component
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.iconColor1,
                      ),
                      BigText(
                        text: 'Niamey',
                        fontSize: Dimension.sizeSixteen,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.iconColor1,
                      ),
                    ],
                  ),
                  Center(
                    child: IconElement(
                      radius: Dimension.paddingTen,
                      size: Dimension.sizeThirty,
                      bgColor: AppColors.secondaryColor,
                      icon: Icons.notifications,
                      color: AppColors.iconColor1,
                      height: Dimension.sizeFourthyFive,
                    ),
                  )
                  //second component
                ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Dimension.sizeFive),
                  //search bar
                  Row(
                    children: [
                      // search bar
                      Expanded(
                          flex: Dimension.sizeFive.toInt(),
                          child: TextFielSearch(
                            controller: TextEditingController(),
                            onChanged: (value) {},
                          )),
                      SizedBox(
                        width: Dimension.paddingTen,
                      ),
                      // filter icon
                      Expanded(
                        flex: 1,
                        child: IconElement(
                          radius: Dimension.paddingTen,
                          size: Dimension.sizeThirty,
                          bgColor: AppColors.secondaryColor,
                          icon: Icons.filter_list,
                          color: AppColors.iconColor1,
                          height: Dimension.sizeFourthyFive,
                        ),
                      ),
                    ],
                  ),
                  //navigation menu
                  SizedBox(height: Dimension.sizeFive),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Dimension.paddingTen,
                        ),
                        child: BigText(
                          text: 'CATEGORIES',
                          fontSize: Dimension.sizeFourteen,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimension.sizeFive),
                  //menu items
                  Padding(
                    padding: EdgeInsets.only(
                      left: Dimension.paddingTen,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuItem(
                          title: 'Accueil',
                          bgColor: AppColors.iconColor1,
                        ),
                        MenuItem(
                          title: 'Maison',
                          color: AppColors.iconColor1,
                        ),
                        MenuItem(
                          title: 'Parcelles',
                          color: AppColors.iconColor1,
                        ),
                        MenuItem(
                          title: 'Meubles',
                          color: AppColors.iconColor1,
                        ),
                        // MenuItem(
                        //   title: 'Autres',
                        //   color: AppColors.iconColor1,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimension.sizeFive),
                  //house list
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
                        return Padding(
                          padding:
                              EdgeInsets.only(bottom: Dimension.paddingTwenty),
                          child: NearlyProperty(
                            image: Image.asset('assets/images/house-2.jpg'),
                            price: 500000,
                            area: 'Banifandou',
                            bed: 02,
                            toilette: 05,
                            type: 'Location',
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
