import 'package:flutter/material.dart';
import 'package:fruit_app/features/splashScreen/presentation/SplashScreen.dart';
import 'package:get/get.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins-Regular'
      ),
      home: SplashScreen(),

    ) ;
  }
}
