import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:belle_house_mobile_app/widgets/menu_item.dart';
import 'package:belle_house_mobile_app/widgets/popular_property.dart';
import 'package:belle_house_mobile_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class MainPropertyPage extends StatelessWidget {
  const MainPropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          //heading
          Container(
            margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first component
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          color: AppColors.iconColor1),
                      BigText(text: 'Niamey'),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.iconColor1,
                      ),
                    ],
                  ),
                  const Center(
                    child: IconElement(
                        bgColor: AppColors.secondaryColor,
                        icon: Icons.notifications,
                        color: AppColors.iconColor1),
                  )
                  //second component
                ]),
          ),
          SizedBox(height: 20),
          //search bar
          Row(
            children: [
              // search bar
              Expanded(
                  flex: 6,
                  child: TextFielSearch(
                    controller: TextEditingController(),
                    onChanged: (value) {},
                  )),
              SizedBox(width: 10),
              // filter icon
              Expanded(
                flex: 1,
                child: const IconElement(
                    bgColor: AppColors.secondaryColor,
                    icon: Icons.filter_list,
                    color: AppColors.iconColor1),
              ),
            ],
          ),
          //navigation menu
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: BigText(text: 'CATEGORIES'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          //menu items
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuItem(
                  title: 'Maison',
                  bgColor: AppColors.iconColor1,
                ),
                MenuItem(
                  title: 'Parcelles',
                  color: AppColors.iconColor1,
                ),
                MenuItem(
                  title: 'Meubles',
                  color: AppColors.iconColor1,
                ),
                MenuItem(
                  title: 'Autres',
                  color: AppColors.iconColor1,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //popular properties
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: BigText(text: 'PLUS POPULAIRES'),
              ),
              MenuItem(
                title: 'Voir+',
                color: AppColors.iconColor1,
              ),
            ],
          ),
          const SizedBox(height: 10),
          //listings
          PopularProperty(
            image: Image.asset('assets/images/house-1.jpg'),
            area: 'Francophonie',
            bed: 2,
            city: 'Pala',
            bedroom: 2,
            type: 'Vente',
            price: 2000,
          ),
        ],
      ),
    );
  }
}
