import 'package:flutter/material.dart';
import '/widgets/onboarding_widget.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      firstImage: 'assets/page-1/images/image-12.png',
      secondImage: 'assets/page-1/images/select_3.png',
      firstText: 'Ride',
      secondText: 'Enjoy your Ride :). \n',
      onNextPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      onSkipPressed: () {
        
      },
      skipText: '',
      nextText: 'next',
    );
  }
}
