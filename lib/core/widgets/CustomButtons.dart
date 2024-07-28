import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/SizeConfig.dart';
import 'package:fruit_app/core/widgets/SpaceWidget.dart';
import 'package:fruit_app/core/widgets/constants.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key, this.text, required this.onTap});
  final String? text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();

      },
      child: Container(
        height: 60,
          width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(text!,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFFffffff),
            fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.left,),
        ),
      ),
    );
  }
}
class CustomButtomWithIcon extends StatelessWidget {
  const CustomButtomWithIcon({super.key, required this.color, required this.iconData, required this.text, required this.onTap});
  final Color color;
  final IconData iconData;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border:Border.all(
            color: Color(0xFF707070),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,color: color,),
            SpaceHorizentalWidget(value: 2,),
            Text(text,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFFffffff),
              fontWeight: FontWeight.w600

            ),
            textAlign: TextAlign.left,),
          ],
        ),

      ),
    );
  }
}

