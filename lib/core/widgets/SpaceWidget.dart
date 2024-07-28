import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/SizeConfig.dart';

class SpaceHorizentalWidget extends StatelessWidget {
  const SpaceHorizentalWidget({super.key , this.value});
  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  SizeConfig.defaultSize! * value!,
    );
  }
}


class SpaceVerticalWidget extends StatelessWidget {
  const SpaceVerticalWidget({super.key , this.value});
  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  SizeConfig.defaultSize! * value!,
    );
  }
}
