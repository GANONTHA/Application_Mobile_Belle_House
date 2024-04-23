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
      height: 43,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.secondaryColor,
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
