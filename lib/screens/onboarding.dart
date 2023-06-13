import 'package:flutter/material.dart';
import '/widgets/onboarding_widget.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      firstImage: 'assets/page-1/images/image-23.png',
      secondImage: 'assets/page-1/images/select_1.png',
      firstText: 'Locate',
      secondText:'Find a Station near your location on the map.\n',
      onNextPressed: () {
        Navigator.pushNamed(context, '/onboarding_two');
      },
      onSkipPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      skipText: 'skip',
      nextText: 'next',
    );
  }
}
