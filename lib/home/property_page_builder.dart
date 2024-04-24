import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/widgets/popular_property.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class PropertyPageBuilder extends StatefulWidget {
  const PropertyPageBuilder({super.key});

  @override
  State<PropertyPageBuilder> createState() => _PropertyPageBuilderState();
}

class _PropertyPageBuilderState extends State<PropertyPageBuilder> {
  PageController pageController = PageController(viewportFraction: 0.78);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  final double _height = 300;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          margin: const EdgeInsets.all(10),
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue.toInt(),
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: AppColors.primaryColor,
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Container(
        height: _height,
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: PopularProperty(
          image: Image.asset('assets/images/house-1.jpg'),
          area: 'Francophonie',
          bed: 03,
          city: 'Pala',
          bedroom: 2,
          type: 'Vente',
          price: 2000,
        ),
      ),
    );
  }
}
