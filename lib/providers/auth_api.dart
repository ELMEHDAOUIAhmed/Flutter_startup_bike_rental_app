import 'package:flutter/material.dart';
import '/models/db.dart';
import '/screens/starting_page.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String?>(
        future: getToken(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final token = snapshot.data;
            if (token is String && token.isNotEmpty) {
              return FutureBuilder<Map<String, dynamic>?>(
                future: getUser(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final user = snapshot.data;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.pushNamed(
                        context,
                        '/profilewelcome',
                        arguments: user,
                      );
                    });
                  }
                  return const SizedBox();
                },
              );
            }
          }
          return StartingPage();
        },
      ),
    );
  }
}

