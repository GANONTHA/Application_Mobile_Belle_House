import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  final Image image;
  final String name;
  final String seller;
  final String color;
  final double price;
  final Color textColor;
  const Furniture(
      {super.key,
      required this.image,
      required this.name,
      required this.seller,
      required this.color,
      required this.price,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: Dimension.pageViewNearest,
        // height: Dimension.sizeTenZero,
        decoration: BoxDecoration(
            // border: Border.all(color: AppColors.primaryColor, width: 1),
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(Dimension.paddingTen),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(3, 3), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(-3, -3), // changes position of shadow
              ),
            ]),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //image
              Expanded(
                flex: Dimension.sizeTwo.toInt(),
                child: Container(
                  // height: Dimension.sizeTenZero,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.paddingTen),
                      bottomLeft: Radius.circular(Dimension.paddingTen),
                    ),
                    image:
                        DecorationImage(image: image.image, fit: BoxFit.cover),
                  ),
                ),
              ),

              //property details
              Expanded(
                flex: Dimension.sizeThree.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: Dimension.sizeEight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: name,
                        fontSize: Dimension.sizeFourteen,
                      ),
                      //location
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: textColor,
                          ),
                          BigText(
                            text: seller,
                            fontSize: Dimension.sizeFourteen,
                          ),
                        ],
                      ),
                      BigText(text: color, fontSize: Dimension.sizeEighteen),
                      BigText(
                        text: '$price FCFA',
                        fontSize: Dimension.sizeSixteen,
                        color: textColor,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
