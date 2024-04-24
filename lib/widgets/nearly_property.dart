import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_with_name.dart';
import 'package:flutter/material.dart';

class NearlyProperty extends StatelessWidget {
  final Image image;
  final String type;
  final double price;
  final String area;
  final int bed;
  final int toilette;
  const NearlyProperty({
    super.key,
    required this.image,
    required this.price,
    required this.area,
    required this.bed,
    required this.toilette,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 110,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor, width: 1),
          color: AppColors.secondaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.secondaryColor.withOpacity(0.9),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image
            Expanded(
              flex: 2,
              child: Container(
                height: 110,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(image: image.image, fit: BoxFit.cover),
                ),
              ),
            ),

            //property details
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: type),
                    //location
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        BigText(
                          text: area,
                          fontSize: 16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconWithName(
                            number: bed, name: 'Chambres', icon: Icons.bed),
                        IconWithName(
                            number: toilette,
                            name: 'Toilettes',
                            icon: Icons.bathtub),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
