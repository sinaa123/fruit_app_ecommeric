import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/SizeConfig.dart';
import 'package:fruit_app/core/widgets/CustomButtons.dart';
import 'package:fruit_app/core/widgets/SpaceWidget.dart';
import 'package:fruit_app/core/widgets/constants.dart';

class CustomAccountScreenWidget extends StatelessWidget {
  const CustomAccountScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceVerticalWidget(value: 10,),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
            child: Image.asset(kLogo)),
        Text(
          'Fruit Market',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xFF69a03a),
              fontSize: 51),
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtomWithIcon(
                    color: Color(0xFF4267B2),
                      iconData: ,
                    text: 'Log in with ',
                    onTap: () {  },
                  ),

            )),
            Flexible(
              flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtomWithIcon(
                    color: Color(0xFF4267B2),
                      iconData: ,
                    text: 'Log in with ', onTap: () {  },
                  ),

            )),

          ],
        ),
        Expanded(child: SizedBox()),

      ],
    );
  }
}
