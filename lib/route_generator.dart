import 'package:flutter/material.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/profile_welcome.dart';
import 'package:myapp/screens/starting_page.dart';
import 'package:myapp/screens/profile_menu.dart';
import 'package:myapp/providers/auth_page.dart';
import 'package:myapp/providers/auth_api.dart';

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
