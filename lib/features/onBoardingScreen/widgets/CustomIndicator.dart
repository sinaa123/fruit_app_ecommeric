import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fruit_app/core/widgets/constants.dart';
class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key,  required this.doctsIndex});
  final double? doctsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: doctsIndex!.toInt(),
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: kMainColor),
        ),
      ),
    );
  }
}
