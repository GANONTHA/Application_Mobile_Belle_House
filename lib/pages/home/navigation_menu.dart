import 'package:belle_house_mobile_app/pages/home/main_property_page.dart';
import 'package:belle_house_mobile_app/pages/properties/furnitures_list.dart';
import 'package:belle_house_mobile_app/pages/properties/houses_list.dart';
import 'package:belle_house_mobile_app/pages/properties/lands_list.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:belle_house_mobile_app/widgets/menu_item.dart';
import 'package:belle_house_mobile_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class NaviMenu extends StatefulWidget {
  const NaviMenu({super.key});

  @override
  State<NaviMenu> createState() => _NaviMenuState();
}

class _NaviMenuState extends State<NaviMenu> {
  int currentpage = 0;
  final List _pages = [
    const MainPropertyPage(),
    const Houses(),
    const LandList(),
    const FurnitureList(),
  ];
  void onTapNav(int index) {
    setState(() {
      currentpage = index;
    });
  }

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          currentpage = 0;
                          onTapNav(currentpage);
                        },
                        child: MenuItem(
                          title: 'Accueil',
                          color: currentpage == 0
                              ? AppColors.secondaryColor
                              : AppColors.primaryColor,
                          bgColor: currentpage == 0
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          currentpage = 1;
                          onTapNav(currentpage);
                        },
                        child: MenuItem(
                          title: 'Maison',
                          color: currentpage == 1
                              ? AppColors.secondaryColor
                              : AppColors.primaryColor,
                          bgColor: currentpage == 1
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          currentpage = 2;
                          onTapNav(currentpage);
                        },
                        child: MenuItem(
                          title: 'Parcelles',
                          color: currentpage == 2
                              ? AppColors.secondaryColor
                              : AppColors.primaryColor,
                          bgColor: currentpage == 2
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          currentpage = 3;
                          onTapNav(currentpage);
                        },
                        child: MenuItem(
                          title: 'Meubles',
                          color: currentpage == 3
                              ? AppColors.secondaryColor
                              : AppColors.primaryColor,
                          bgColor: currentpage == 3
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                        ),
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
                // const Houses()
                // FurnitureList()
                _pages[currentpage],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
