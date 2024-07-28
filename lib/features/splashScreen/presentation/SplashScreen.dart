import 'package:flutter/material.dart';
import 'package:fruit_app/features/splashScreen/widgets/SplashViewWidget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69A03A),
      body: SplashViewWidget(),
    );
  }
}
