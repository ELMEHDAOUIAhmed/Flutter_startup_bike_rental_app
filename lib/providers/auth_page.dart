import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/screens/login.dart';

import 'package:myapp/screens/profile_welcome.dart';
import 'package:myapp/screens/login.dart';

import 'package:myapp/screens/starting_page.dart';

//This widget it used for to check if the user is logged in or not
// execute this page in main and if user is connected
// we go straight to profile_welcome
// else
// we go to home page which will be the getstarted

class AuthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder<User>(
        //it will keep listening 
      stream:FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // user is logged in
        if(snapshot.hasData)
        {
          print(snapshot);
          return Profile_welcome();      
        }
        //user is NOT logged in
        else{
          return StartingPage();
          //Login();
        }

      },
      ),
    );
  }
}