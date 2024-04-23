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
      height: 300,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          //image with like (heart) button in a stack widget
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: image,
              ),
              Positioned(
                  right: 8,
                  top: 8,
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
                children: [Text(type), Text('$price')],
              ),
              SizedBox(height: 6),
              //area and city
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Text(city),
                  Text('-'),
                  Text(area)
                ],
              ),
              //bed and bedrooms
              IconWithName(bedroom: '3', bed: '3')
            ],
          )
        ],
      ),
    );
  }
}
