import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/all_furnitures_widget.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AllFurnitures extends StatefulWidget {
  const AllFurnitures({super.key});

  @override
  State<AllFurnitures> createState() => _AllFurnituresState();
}

class _AllFurnituresState extends State<AllFurnitures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        surfaceTintColor: AppColors.primaryColor,
        title: BigText(
          text: 'Tous les Meubles',
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
                  return AllFurnituresWidget();
                }),
          ),
        ],
      ),
    );
  }
}
