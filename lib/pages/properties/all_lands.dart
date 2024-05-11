import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/all_lands_widget.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AllLands extends StatefulWidget {
  const AllLands({super.key});

  @override
  State<AllLands> createState() => _AllLandsState();
}

class _AllLandsState extends State<AllLands> {
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
                  return const AllLandsWidget();
                }),
          ),
        ],
      ),
    );
  }
}
