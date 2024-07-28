import 'package:flutter/material.dart';
import 'package:fruit_app/features/onBoardingScreen/widgets/PageViewItem.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key,required this.pageController});
   final PageController? pageController ;

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      children: [
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          tittle: 'E Shopping',
          subtitle: 'Explore top origin fruits and grap them',
        ),
        PageViewItem(
          image: 'assets/images/onboarding2.png',
          tittle: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          tittle: 'Delivery Arrived',
          subtitle: 'Order is arrived at your place',
        ),
      ],

    );
  }
}
