import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:belle_house_mobile_app/widgets/icon_component.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: Dimension.sizeThirty * 1.75),
        child: Column(
          children: [
            Container(
              color: AppColors.secondaryColor,
              child: Column(
                children: [
                  //header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //back button
                      Container(
                        margin:
                            EdgeInsets.only(left: Dimension.paddingTwenty / 2),
                        child: IconElement(
                          icon: Icons.arrow_back,
                          color: AppColors.iconColor1,
                          size: Dimension.paddingTwenty,
                          radius: Dimension.paddingTwenty,
                          bgColor: AppColors.backgroundColor,
                          height: Dimension.sizeThirtyFive,
                        ),
                      ),
                      //Heading text
                      Text(
                        'Profile',
                        style: TextStyle(
                          // color: AppColors.,
                          fontSize: Dimension.sizeEighteen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //logout button
                      Container(
                          margin: EdgeInsets.only(
                              right: Dimension.paddingTwenty / 2),
                          child: IconElement(
                            icon: Icons.logout,
                            color: AppColors.iconColor1,
                            size: Dimension.paddingTwenty,
                            radius: Dimension.paddingTwenty,
                            bgColor: AppColors.backgroundColor,
                            height: Dimension.sizeThirtyFive,
                          ))
                    ],
                  ),
                  //profile image with details underneath
                  Container(
                    margin: EdgeInsets.only(top: Dimension.sizeThirty),
                    child: Column(children: [
                      //profile image
                      Container(
                        height: Dimension.sizeFourthyFive * 2,
                        width: Dimension.sizeFourthyFive * 2,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profile-1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          color: AppColors.secondaryColor,
                          borderRadius:
                              BorderRadius.circular(Dimension.sizeThirty * 2),
                        ),
                      ),
                      //profile details
                      Container(
                        margin: EdgeInsets.only(top: Dimension.paddingTen),
                        child: Column(
                          children: [
                            //name
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //email
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Telephone: ',
                                  style: TextStyle(
                                      fontSize: Dimension.sizeSixteen,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '11223423',
                                  style: TextStyle(
                                    fontSize: Dimension.sizeSixteen,
                                  ),
                                ),
                                //edit icon
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.edit_square,
                                    color: AppColors.iconColor1,
                                    size: Dimension.sizeEighteen,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
