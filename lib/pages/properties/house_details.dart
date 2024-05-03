import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/big_text.dart';
import 'package:belle_house_mobile_app/widgets/description_text.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:belle_house_mobile_app/widgets/property_details_call_to_action_container.dart';
import 'package:belle_house_mobile_app/widgets/property_details_icon.dart';
import 'package:belle_house_mobile_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class PopularPropetyDetails extends StatelessWidget {
  const PopularPropetyDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          //image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.popularFoodImageHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/house-3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //back button and like button
          Positioned(
            left: Dimension.paddingTwenty,
            right: Dimension.paddingTwenty,
            top: Dimension.sizeThirtyFive * 1.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: IconElement(
                    icon: Icons.arrow_back,
                    color: AppColors.iconColor1,
                    size: Dimension.paddingTwenty,
                    radius: Dimension.paddingTwenty,
                    bgColor: AppColors.secondaryColor,
                    height: Dimension.sizeThirtyFive,
                  ),
                ),
                IconElement(
                  icon: Icons.favorite,
                  color: Colors.red,
                  size: Dimension.paddingTwenty,
                  radius: Dimension.paddingTwenty,
                  bgColor: AppColors.secondaryColor,
                  height: Dimension.sizeThirtyFive,
                )
              ],
            ),
          ),
          //body container
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.popularFoodImageHeight - Dimension.paddingTwenty,
            child: Container(
              padding: EdgeInsets.all(Dimension.paddingTwenty),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.sizeFithteen),
                  topRight: Radius.circular(Dimension.sizeFithteen),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //price and type
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigText(
                          text: "VENTE",
                          color: Colors.black,
                          fontSize: Dimension.sizeFourteen,
                        ),
                        BigText(
                          text: '30 MILLIONS',
                          color: AppColors.primaryColor,
                          fontSize: Dimension.sizeFourteen,
                        ),
                      ],
                    ),
                    //area and city
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.textColor,
                          size: Dimension.sizeFithteen,
                        ),
                        Text(
                          "Naimey",
                          style: TextStyle(fontSize: Dimension.sizeFithteen),
                        ),
                        const Text('-'),
                        const Text("Banifandou")
                      ],
                    ),
                    SizedBox(height: Dimension.sizeFive),
                    //details
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PropertyDetailsIcon(
                          number: 4,
                          item: "chambre",
                          icon: Icons.king_bed,
                        ),
                        PropertyDetailsIcon(
                          number: 2,
                          item: "Salons",
                          icon: Icons.living,
                        ),
                        PropertyDetailsIcon(
                          number: 4,
                          item: "Toilettes",
                          icon: Icons.shower,
                        ),
                        PropertyDetailsIcon(
                          number: 3,
                          item: "Cuisines",
                          icon: Icons.kitchen,
                        ),
                      ],
                    ),
                    SizedBox(height: Dimension.sizeFive),
                    // Description
                    BigText(
                      text: "Description",
                      color: Colors.black,
                      fontSize: Dimension.sizeFourteen,
                    ),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: DescriptionText(
                            text:
                                'lorem2 herlorem2 herlo fher df ndlorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdf bsdff fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflorem2 herlo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdflo fher df ndf fsdfj jfsdj bfsdjf fsdfjdf bsdf'),
                      ),
                    ),
                    SizedBox(height: Dimension.sizeFive),
                    //location
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                        left: Dimension.sizeFourthy,
                        right: Dimension.sizeFourthy,
                        bottom: Dimension.paddingTen,
                      ),
                      child: const CTAContainer(
                        text: 'Voir Localisation',
                        icon: Icons.location_on_outlined,
                        bgColor: AppColors.secondaryColor,
                        iconColor: AppColors.iconColor1,
                      ),
                    ),
                    //agent
                    BigText(
                      text: 'Details du Contacts',
                      fontSize: Dimension.sizeEighteen,
                    ),
                    Row(
                      children: [
                        Container(
                          height: Dimension.sizeFourthyFive,
                          width: Dimension.sizeFourthyFive,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Dimension.sizeFourthyFive),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/house-1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: Dimension.paddingTen),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Belle House",
                              color: AppColors.primaryColor,
                              fontSize: Dimension.sizeFourteen,
                            ),
                            const SmallText(text: 'Agence Immobiliere')
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.sizeFourthyFive * 2,
        padding: EdgeInsets.only(
            left: Dimension.paddingTwenty,
            right: Dimension.paddingTwenty,
            top: Dimension.paddingTwenty,
            bottom: Dimension.paddingTwenty),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.paddingTwenty),
            topRight: Radius.circular(Dimension.paddingTwenty),
          ),
        ),
        child: Row(
          children: [
            //call button
            const Expanded(
                flex: 3,
                child: CTAContainer(
                  icon: Icons.call,
                  text: "Appeler l'Agent",
                  bgColor: AppColors.primaryColor,
                  iconColor: AppColors.secondaryColor,
                )),
            SizedBox(width: Dimension.paddingTwenty),
            const Expanded(
                flex: 2,
                child: CTAContainer(
                  icon: Icons.inbox_outlined,
                  text: 'Message',
                  bgColor: AppColors.secondaryColor,
                  iconColor: AppColors.iconColor1,
                )),
          ],
        ),
      ),
    );
  }
}
