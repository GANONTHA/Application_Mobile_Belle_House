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
        SizedBox(
          height: Dimension.pageViewContainer,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimension.paddingTen),
                ),
                child: image,
              ),
              Positioned(
                  left: Dimension.sizeTwo,
                  top: Dimension.sizeTwo,
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
            constraints: BoxConstraints(minHeight: Dimension.pageViewDetails),
            padding: EdgeInsets.only(
                left: Dimension.paddingTen,
                top: Dimension.paddingTen,
                right: Dimension.paddingTen,
                bottom: Dimension.paddingTen),
            margin: EdgeInsets.only(
                left: Dimension.paddingTwenty,
                right: Dimension.paddingTwenty,
                bottom: Dimension.sizeTwo),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(Dimension.paddingTwenty),
              ),
              color: AppColors.secondaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: Dimension.sizeTwo,
                  offset: Offset(Dimension.sizeTwo, Dimension.sizeFive),
                ),
                BoxShadow(
                  color: Colors.black12,
                  // blurRadius: Dimension.sizeTwo,
                  offset: Offset(-Dimension.sizeTwo, -Dimension.sizeFive),
                ),
              ],
            ),
            height: Dimension.pageViewDetails,
            child: Flexible(
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
                        fontSize: Dimension.sizeFourteen,
                      ),
                      BigText(
                        text: '$price FCFA',
                        color: AppColors.primaryColor,
                        fontSize: Dimension.sizeFourteen,
                      )
                    ],
                  ),
                  SizedBox(height: Dimension.sizeFive),
                  //area and city
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.textColor,
                        size: Dimension.sizeTwelve,
                      ),
                      Text(
                        city,
                        style: TextStyle(fontSize: Dimension.sizeTwelve),
                      ),
                      const Text('-'),
                      Text(area)
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
