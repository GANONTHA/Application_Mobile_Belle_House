import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class TextFielSearch extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const TextFielSearch(
      {super.key, required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimension.paddingTen),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            // spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          )
        ],
      ),
      height: Dimension.sizeFourthy,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(
                0, Dimension.paddingTen, 0, Dimension.paddingTen),
            filled: true,
            fillColor: AppColors.secondaryColor,
            hintText: 'Tapez pour rechercher',
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: Dimension.sizeSixteen,
              letterSpacing: 1.2,
            ),
            prefixIcon: Icon(
              Icons.search,
              size: Dimension.sizeThirtyFive,
              color: AppColors.iconColor1,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(Dimension.paddingTen))),
      ),
    );
  }
}
