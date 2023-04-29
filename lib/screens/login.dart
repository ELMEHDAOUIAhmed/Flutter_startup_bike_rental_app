import 'package:flutter/material.dart';
import 'package:myapp/screens/signup.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/components/my_textfield.dart';
import 'package:myapp/components/my_button.dart';
import '/providers/user_api.dart';
import '/models/db.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = ''; //pass it in pushname as a parameter
  // variables to hold user input
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserInAPI() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    String email = emailController.text;
    String password = passwordController.text;
    if (email != '' && password != '') {
      try {
        // Call the login function and wait for it to complete
        final token = await login(email, password);
        username = emailController.text;
        // Save the token to the local database
        await saveToken(token);
        // Navigate to the home screen
        //Navigator.pushNamedAndRemoveUntil(context, '/auth', (route) => false);
        Navigator.of(context).pushNamed('/profilewelcome', arguments: {
          'matricule': '12121',
          'lastname': 'ahmed',
          'firstname': 'zin',
          'email': 'email@test.com',
          'sold': 20.0
        });

        // Text('Matricule: ${user['matricule']}'),
        // Text('Last Name: ${user['lastname']}'),
        // Text('First Name: ${user['firstname']}'),
        // Text('Email: ${user['email']}'),
        // Text('Sold: ${user['sold']}'),
        
      } catch (error) {
        // Display an error message
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Error'),
              content: Text(error.toString()),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            title: Row(
              children: const [
                //Icon(Icons.error, color: Colors.red),
                Icon(Icons.error, color: Colors.red),
                SizedBox(width: 8.0),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text('All fields are required ! \n',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
            // Other properties
          );
        },
      );
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      //you need a statefull widget to show dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Row(
            children: [
              //Icon(Icons.error, color: Colors.red),
              Icon(Icons.error, color: Colors.red),
              SizedBox(width: 8.0),
              Text('Incorrect Email!', style: TextStyle(fontSize: 16.0)),
            ],
          ),
          // Other properties
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      //you need a statefull widget to show dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Row(
            children: [
              //Icon(Icons.error, color: Colors.red),
              Icon(Icons.error, color: Colors.red),
              SizedBox(width: 8.0),
              Text('Incorrect Password!', style: TextStyle(fontSize: 16.0)),
            ],
          ),
          // Other properties
        );
      },
    );
  }

  //user not found

  void userNotFoundMessage() {
    showDialog(
      //you need a statefull widget to show dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Row(
            children: [
              //Icon(Icons.error, color: Colors.red),
              Icon(Icons.error, color: Color.fromARGB(255, 165, 0, 0)),
              SizedBox(width: 8.0),
              Text('User Not Found!', style: TextStyle(fontSize: 16.0)),
            ],
          ),
          // Other properties
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginapM (1:1328)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headergsP (1:1329)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(32 * fem, 50 * fem, 32 * fem, 91 * fem),
                width: 414 * fem,
                height: 215 * fem,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.217, 1),
                    end: Alignment(0.2, -1),
                    colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupgdyqUoF (NEs1ppjEVJ6z1BzVMWGDYq)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 134.5 * fem, 6 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // loginP9X (1:1332)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 30.5 * fem, 0 * fem),
                            child: Text(
                              'Log in',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 32 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xffffffff),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Container(
                            // signupTfB (1:1333)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Sign up',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xffffffff),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // selectXf3 (1:1331)
                      margin: EdgeInsets.fromLTRB(
                          2 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: 48 * fem,
                      height: 6 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3 * fem),
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // cardEpM (1:1334)
              left: 0 * fem,
              top: 148 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    31 * fem, 46 * fem, 32 * fem, 353 * fem),
                width: 414 * fem,
                height: 830 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48 * fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //TEXT FIELD HERE
                    MyTextField(
                      controller: emailController,
                      labelText: 'Username',
                      hintText: '',
                      obscureText: false,
                    ),
                    MyTextField(
                      controller: passwordController,
                      labelText: 'Password',
                      hintText: '',
                      obscureText: true,
                    ),
                    Container(
                      // signupwithyoureeHj (1:1339)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 80 * fem, 0 * fem, 20 * fem),
                      child: Text(
                        'Log in with your username and password',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3333333333 * ffem / fem,
                          color: Color(0xff000000),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    // add button here as a container
                    MyButton(
                      text: 'Login',
                      onTap: signUserInAPI,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
