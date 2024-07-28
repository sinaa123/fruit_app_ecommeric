import 'package:flutter/material.dart';

class SplashViewWidget extends StatefulWidget {
  const SplashViewWidget({super.key});

  @override
  State<SplashViewWidget> createState() => _SplashViewWidgetState();
}

class _SplashViewWidgetState extends State<SplashViewWidget> with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? fadeingAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =AnimationController(vsync: this, duration: const Duration(milliseconds: 6000));
    fadeingAnimation = Tween<double>(begin: 0.2, end: 1).animate(_animationController!);
    _animationController!.repeat(reverse: true);
  }


  @override
  void dispose() {
    super.dispose();
    _animationController!.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Spacer(),
          FadeTransition(
            opacity: fadeingAnimation!,
            child: Text(
              'Fruit Market',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFffffff),
                  fontSize: 51),
            ),
          ),
          Image.asset('assets/images/splash_view_image.png')
        ],
      ),
    );
  }
}
