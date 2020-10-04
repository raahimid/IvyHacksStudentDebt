import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:biggipank/widgets/slider_layout.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBoardingBody(),
    );
  }

  Widget onBoardingBody() => Container(
        child: SliderLayoutView(),
      );
}