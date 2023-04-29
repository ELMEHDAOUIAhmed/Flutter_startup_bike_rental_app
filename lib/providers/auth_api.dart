import 'package:flutter/material.dart';
import '/models/db.dart';
import '/screens/starting_page.dart';
import '/screens/profile_welcome.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String>(
        future: getToken(),
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final token = snapshot.data;
            if (token is String && token.isNotEmpty) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.pushNamed(context, '/profilewelcome', arguments: {
                  'matricule': '12121',
                  'lastname': 'ahmed',
                  'firstname': 'zin',
                  'username': 'Mourad ahmed',
                  'email': 'email@test.com',
                  'sold': 20.0
                });
                //get this from api
              });
              return const SizedBox();
            }
          }
          return StartingPage();
        },
      ),
    );
  }
}
