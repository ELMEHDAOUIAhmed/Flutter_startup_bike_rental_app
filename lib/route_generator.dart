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
import '/tests/map_screen_new.dart';
import '/screens/signup.dart';

//https://www.youtube.com/watch?v=nyvwx7o277U

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => StartingPage());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => Onboarding());
      case '/onboarding_two':
        return MaterialPageRoute(builder: (_) => OnboardingTwo());
      case '/onboarding_three':
        return MaterialPageRoute(builder: (_) => OnboardingThree());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/signup':
        return MaterialPageRoute(builder: (_) => Signup());
      case '/profilewelcome':
        // if (args is Map<String, dynamic>) {
          return MaterialPageRoute(
              builder: (_) => Profile_welcome(
                    user: args,
                  ));
        // }break;
      case '/profilemenu':
        return MaterialPageRoute(builder: (_) => ProfileMenu());
      case '/voucher':
        return MaterialPageRoute(builder: (_) => PaymentVoucher());
      case '/payment':
        return MaterialPageRoute(builder: (_) => Payment());
      case '/wallet':
        return MaterialPageRoute(builder: (_) => Mywallet());
      // case '/promotion':
      //   return MaterialPageRoute(builder: (_) => MapScreenNew());
      // case '/ride_history':
      //   return MaterialPageRoute(builder: (_) => MapScreenNew());
      // case '/settings':
      //   return MaterialPageRoute(builder: (_) => MapScreenNew());
      // case '/support_request':
      //   return MaterialPageRoute(builder: (_) => MapScreenNew());
      // case '/support':
      //   return MaterialPageRoute(builder: (_) => MapScreenNew());
      // case '/verification':
      //   return MaterialPageRoute(builder: (_) => MapScreenNew());
      case '/map':
        return MaterialPageRoute(builder: (_) => MapScreenNew());

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
