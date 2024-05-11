import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/most_popular_widget.dart';
import 'package:belle_house_mobile_app/widgets/nearest_property_widget.dart';
import 'package:flutter/material.dart';

class NearestPropertiesPage extends StatefulWidget {
  const NearestPropertiesPage({super.key});

  @override
  State<NearestPropertiesPage> createState() => _NearestPropertiesPageState();
}

class _NearestPropertiesPageState extends State<NearestPropertiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        surfaceTintColor: AppColors.primaryColor,
        title: BigText(
          text: 'Les Plus Proches de Vous',
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
