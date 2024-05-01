import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class __DescriptionText extends StatefulWidget {
  final String text;
  const __DescriptionText({super.key, required this.text});

  @override
  State<__DescriptionText> createState() => ___DescriptionTextState();
}

class ___DescriptionTextState extends State<__DescriptionText> {
  late String firstHalfText;
  late String secondHalfText;

  bool hiddenText = true;
  double textHeight = Dimension.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalfText = widget.text.substring(0, textHeight.toInt());
      secondHalfText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalfText = widget.text;
      secondHalfText = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
