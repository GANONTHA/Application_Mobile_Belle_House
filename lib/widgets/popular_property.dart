import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
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
    return Stack(
      children: [
        //image with like (heart) button in a stack widget
        Container(
          height: Dimension.pageViewContainer,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: image,
              ),
              Positioned(
                  left: 2,
                  top: 2,
                  child: IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {},
                  ))
            ],
          ),
        ),

        //property details
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: AppColors.secondaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  offset: Offset(2, 5),
                ),
                BoxShadow(
                  color: Colors.black12,
                  // blurRadius: 2,
                  offset: Offset(-2, -5),
                ),
              ],
            ),
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price and type
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(
                      text: type,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    BigText(
                      text: '$price FCFA',
                      color: AppColors.primaryColor,
                      fontSize: 14,
                    )
                  ],
                ),
                const SizedBox(height: 6),
                //area and city
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: AppColors.textColor,
                      size: 13,
                    ),
                    Text(
                      city,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const Text('-'),
                    Text(area)
                  ],
                ),
                //bed and bedrooms
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     IconWithName(
                //       number: bedroom,
                //       name: 'Chambres',
                //       icon: Icons.bed,
                //     ),
                //     IconWithName(
                //         number: bed, name: 'Toilettes', icon: Icons.shower)
                //   ],
                // )
              ],
            ),
          ),
        )
      ],
    );
  }
}
