import 'package:flutter/material.dart';
import 'package:fruit_app/core/widgets/constants.dart';
import 'package:fruit_app/features/splashScreen/widgets/SplashViewWidget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewWidget(),
    );
  }
}
