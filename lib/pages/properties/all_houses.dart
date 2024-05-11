import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/nearest_property_widget.dart';
import 'package:flutter/material.dart';

class AllHouses extends StatefulWidget {
  const AllHouses({super.key});

  @override
  State<AllHouses> createState() => _AllHousesState();
}

class _AllHousesState extends State<AllHouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        surfaceTintColor: AppColors.primaryColor,
        title: BigText(
          text: 'Toutes les Maisons',
          fontSize: Dimension.paddingTwenty,
          color: AppColors.primaryColor,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return NearestPropertiesWidget();
                }),
          ),
        ],
      ),
    );
  }
}
