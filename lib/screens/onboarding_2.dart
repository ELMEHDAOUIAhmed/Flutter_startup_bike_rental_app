import 'package:flutter/material.dart';
import '/widgets/onboarding_widget.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      firstImage: 'assets/page-1/images/image-11.png',
      secondImage: 'assets/page-1/images/select_2.png',
      firstText: 'Unlock',
      secondText: 'Go to that Station,Connect to our smart bike via Bluetooth ,swipe your card.', 
      onNextPressed: () {
        Navigator.pushNamed(context, '/onboarding_three');
      },
      onSkipPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      skipText: 'skip',
      nextText: 'next',
    );
  }
}
