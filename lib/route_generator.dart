import 'package:flutter/material.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/profile_welcome.dart';
import 'package:myapp/screens/starting_page.dart';
import 'package:myapp/screens/profile_menu.dart';
import 'package:myapp/providers/auth_api.dart';
import '/screens/onboarding.dart';
import '/screens/onboarding_2.dart';
import '/screens/onboarding_3.dart';
import '/screens/payment_voucher.dart';
import '/screens/payment.dart';
import '/screens/my_wallet.dart';

//https://www.youtube.com/watch?v=nyvwx7o277U

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/auth':
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => StartingPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/profilewelcome':
        return MaterialPageRoute(builder: (_) => Profile_welcome());
      case '/profilemenu':
        return MaterialPageRoute(builder: (_) => ProfileMenu());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case '/onboarding_two':
        return MaterialPageRoute(builder: (_) => const OnboardingTwo());
      case '/onboarding_three':
        return MaterialPageRoute(builder: (_) => const OnboardingThree());
      case '/voucher':
        return MaterialPageRoute(builder: (_) => PaymentVoucher());
      case '/payment':
        return MaterialPageRoute(builder: (_) => Payment());
      case '/wallet':
        return MaterialPageRoute(builder: (_) => Mywallet());

        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Oops! Page not found.'),
        ),
      ),
    );
  }
}
