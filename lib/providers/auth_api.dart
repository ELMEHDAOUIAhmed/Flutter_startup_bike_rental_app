import 'package:flutter/material.dart';
import '/models/db.dart';
import '/tests/home_page_new.dart';
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
                // Navigator.pushNamed(
                //   context,
                //   '/profilewelcome',
                // );
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profile_welcome()),
                );
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
