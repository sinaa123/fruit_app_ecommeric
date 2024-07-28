import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/SizeConfig.dart';
import 'package:fruit_app/core/widgets/CustomButtons.dart';
import 'package:get/get.dart';
import 'package:fruit_app/features/auth/presentation/pages/AccountScreen.dart';
import 'package:fruit_app/features/onBoardingScreen/widgets/CustomIndicator.dart';
import 'package:fruit_app/features/onBoardingScreen/widgets/CustomPageView.dart';
class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({super.key});

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  PageController? pageController;
  @override
  void initState() {

    pageController = PageController(
        initialPage: 0
    )..addListener((){
      setState(() {

      });

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
      Positioned(
        left: 0,
        right: 0,
        bottom: SizeConfig.defaultSize! * 24,
        child: CustomIndicator(doctsIndex: pageController!.hasClients ? pageController?.page : 0,),
      ),
        Visibility(
          visible: pageController!.hasClients ? (pageController?.page == 2 ? false : true): true ,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text('Skip',textAlign: TextAlign.left,style: TextStyle(
              fontSize: 14,
              color: Color(0xFF898989)
            ),),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10 ,
            child: CustomButtons(text: pageController!.hasClients ? (pageController?.page == 2 ?  'Get Started':  'Next') : 'Next',
              onTap: (){
           pageController!.page!  < 2 ?
           (pageController?.nextPage(duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn))
                  :
               Get.to(()=>AccountScreen(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));


              },)),

      ],
    );
  }
}
