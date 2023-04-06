import 'package:flutter/material.dart';
import 'package:myapp/screens/profile_welcome.dart';
import 'package:myapp/screens/starting_page.dart';

//https://www.youtube.com/watch?v=nyvwx7o277U

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;
    
    switch(settings.name){
      case '/':
        //return MaterialPageRoute(builder: ()=> StartingPage());
      case '':
      if(args is String){
       // return MaterialPageRoute(builder: ()=> Profile_welcome(username:args,),);
      }
        return _errorRoute();
    default:
        return _errorRoute();
    }


  }
  
static Route<dynamic> _errorRoute() {
  return MaterialPageRoute(
    builder: (_) => Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Oops! Page not found.'),
      ),
    ),
  );
}

}

