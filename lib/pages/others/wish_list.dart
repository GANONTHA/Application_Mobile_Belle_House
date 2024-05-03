import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Important extends StatelessWidget {
  const Important({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(child: const Text('Important items')),
    );
  }
}
