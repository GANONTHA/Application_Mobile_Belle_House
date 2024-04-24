import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_with_name.dart';
import 'package:flutter/material.dart';

class PopularProperty extends StatelessWidget {
  final Image image;
  final double price;
  final String area;
  final String city;
  final int bed;
  final int bedroom;
  final String type;
  const PopularProperty({
    super.key,
    required this.image,
    required this.price,
    required this.area,
    required this.bed,
    required this.city,
    required this.bedroom,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: AppColors.secondaryColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.secondaryColor.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            //image with like (heart) button in a stack widget
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: image,
                ),
                Positioned(
                    left: 2,
                    top: 2,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ))
              ],
            ),

            //property details
            Column(
              children: [
                //price and type
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(
                      text: '$type',
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    BigText(
                      text: '$price FCFA',
                      color: AppColors.iconColor1,
                      fontSize: 16,
                    )
                  ],
                ),
                const SizedBox(height: 6),
                //area and city
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: AppColors.iconColor1,
                    ),
                    Text(city),
                    const Text('-'),
                    Text(area)
                  ],
                ),
                //bed and bedrooms
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconWithName(
                      number: 2,
                      name: 'Chambres',
                      icon: Icons.bed,
                    ),
                    IconWithName(
                        number: 03, name: 'Toilettes', icon: Icons.shower)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
