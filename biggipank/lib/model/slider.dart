import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;
  final bool sliderButton;

  Slider(
      {@required this.sliderImageUrl,
      @required this.sliderHeading,
      @required this.sliderSubHeading,
      this.sliderButton});
}

final sliderArrayList = [
  Slider(
      sliderButton: false,
      sliderImageUrl: 'images/onboard_1.png',
      sliderHeading: 'Welcome Students!',
      sliderSubHeading:
          'We see this is your first time on the app! Our application\'s goal is to help simulate how a student loan will effect you after College with its long term effects.'),
  Slider(
      sliderButton: false,
      sliderImageUrl: 'images/onboard_2.png',
      sliderHeading: 'How to use us!',
      sliderSubHeading:
          'We\'re going to help calcuate how a Stafford Loan can effect your finances with your help! Just answer a few questions and make a few changes to your lifestyle choice post college, and we\'ll do the rest'),
  Slider(
      sliderButton: true,
      sliderImageUrl: 'images/onboard_3.png',
      sliderHeading: 'Let\'s begin!',
      sliderSubHeading:
          'Just click the button below and begin answering a few questions!'),
];
