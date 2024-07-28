import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fruit_app/core/utils/SizeConfig.dart';
import 'package:fruit_app/core/widgets/SpaceWidget.dart';
class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key , required this.tittle,required this.subtitle, required this.image});
  final String tittle,subtitle,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SpaceVerticalWidget(value: 18,),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
            child: Image.asset(image)),
        const SpaceVerticalWidget(value: 2.5,),
        Text(tittle,textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20,
          color: Color(0xFF2f2e41),
          fontWeight:FontWeight.w500

        ),),
        const SpaceVerticalWidget(value: 1,),
        Text(subtitle,textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF78787c),
          fontWeight:FontWeight.bold

        ),),
      ],

    );
  }
}
