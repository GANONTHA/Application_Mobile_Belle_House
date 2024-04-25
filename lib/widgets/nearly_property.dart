import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
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
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: Dimension.sizeTenZero,
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
                  height: Dimension.sizeTenZero,
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
                flex: Dimension.sizeTwo.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: Dimension.sizeEight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: type,
                        fontSize: Dimension.sizeSixteen,
                      ),
                      //location
                      Row(
                        children: [
                          const Icon(Icons.location_on),
                          BigText(
                            text: area,
                            fontSize: Dimension.sizeSixteen,
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
      ),
    );
  }
}
