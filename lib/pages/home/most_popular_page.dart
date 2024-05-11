import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/important_item.dart';
import 'package:flutter/material.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({super.key});

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        surfaceTintColor: AppColors.primaryColor,
        title: BigText(
          text: 'Les Plus Populaires',
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
                  return ImportantItem();
                }),
          ),
        ],
      ),
    );
  }
}
