import 'package:belle_house_mobile_app/widgets/popular_property.dart';
import 'package:flutter/material.dart';

class PropertyPageBuilder extends StatefulWidget {
  const PropertyPageBuilder({super.key});

  @override
  State<PropertyPageBuilder> createState() => _PropertyPageBuilderState();
}

class _PropertyPageBuilderState extends State<PropertyPageBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 330,
      margin: EdgeInsets.all(10),
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }
}

Widget _buildPageItem(int index) {
  return Container(
    child: PopularProperty(
      image: Image.asset('assets/images/house-1.jpg'),
      area: 'Francophonie',
      bed: 03,
      city: 'Pala',
      bedroom: 2,
      type: 'Vente',
      price: 2000,
    ),
  );
}
