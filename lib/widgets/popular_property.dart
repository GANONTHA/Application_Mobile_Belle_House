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
              const SizedBox(height: 6),
              //area and city
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
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
                    icon: Icon(Icons.bed),
                  ),
                  IconWithName(
                      number: 03, name: 'Toilettes', icon: Icon(Icons.shower))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
