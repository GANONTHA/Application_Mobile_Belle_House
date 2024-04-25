import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFielSearch extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const TextFielSearch(
      {super.key, required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
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
      height: 40,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            filled: true,
            fillColor: AppColors.secondaryColor,
            hintText: 'Tapez pour rechercher',
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              letterSpacing: 1.2,
            ),
            prefixIcon: const Icon(
              Icons.search,
              size: 35,
              color: AppColors.iconColor1,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
