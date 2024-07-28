import 'package:flutter/material.dart';
import 'package:fruit_app/features/onBoardingScreen/widgets/OnBoardingWidget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key ?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingWidget(),

    );
  }
}
