import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import './login.dart';
import 'package:myapp/components/my_textfield.dart';
import 'package:myapp/components/my_button.dart';
import '/providers/user_api.dart';
import '/models/db.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // variables to hold user input
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final lastnameController = TextEditingController();
  final firstnameController = TextEditingController();
  final matriculeController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  // sign user up method
  void signUserUpAPI() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    final matricule = matriculeController.text;
    final lastName = lastnameController.text;
    final firstName = firstnameController.text;
    final userName = usernameController.text;
    final email = emailController.text;
    final password = passwordController.text;
    final confirmpassword = confirmpasswordController.text;

    if (password != confirmpassword) {
      showDialog(
        //you need a statefull widget to show dialog
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            title: Row(
              children: const [
                //Icon(Icons.error, color: Colors.red),
                Icon(Icons.error, color: Color.fromARGB(255, 165, 0, 0)),
                SizedBox(width: 8.0),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                      'Error !\nPassword and Confirm Password are not the same!',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
          );
        },
      );
    } else if (matricule != '' &&
        lastName != '' &&
        firstName != '' &&
        userName != '' &&
        email != '' &&
        password != '' &&
        confirmpassword != '') {
      try {
        final token = await signUp(
            matricule, lastName, firstName, userName, email, password);
        // Save the token to the local database
        await saveToken(token);
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48),
              ),
              title: Row(
                children: [
                  //Icon(Icons.error, color: Colors.red),
                  const Icon(Icons.check_box, color: Colors.green),
                  const SizedBox(width: 8.0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                        'Success! \n Welcome to our APP "' + userName + '"',
                        style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              // Other properties
            );
          },
        ).then((value) {
          // Wait for dialog to close before navigating to auth screen
          Navigator.pushNamedAndRemoveUntil(context, '/auth', (route) => false);
        });
      } catch (error) {
        // Display an error message
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
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text('Error! \n' + error.toString(),
                        style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              // Other properties
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

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height,
      width: double.infinity,
      child: Container(
        // signupzUu (1:1314)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headeruLy (1:1315)
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
                    end: Alignment(0.217, -1),
                    colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupkpiuJe1 (NErybUH6nefqa2yJfVkPiu)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 127 * fem, 6 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // loginQh3 (1:1318)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 29 * fem, 2 * fem),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Log in',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // signup4Wh (1:1319)
                            'Sign up',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xffffffff),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangleajw (1:1317)
                      margin: EdgeInsets.fromLTRB(
                          97 * fem, 0 * fem, 205 * fem, 0 * fem),
                      width: double.infinity,
                      height: 6 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3 * fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //i want these to be scrolable onp
            Positioned(
              left: 0 * fem,
              top: 148 * fem,
              bottom: 0 * fem,
              right: 0 * fem,
              //https://www.youtube.com/watch?v=I6GxW20j1gI
              child: GestureDetector(
                onTap: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      27 * fem, 46 * fem, 32 * fem, 0 * fem),

                  //padding: EdgeInsets.fromLTRB(27 * fem, 46 * fem, 32 * fem, 553 * fem),
                  //this padding above allows scrolling but it only shows tiny bit because single
                  width: 414 * fem,
                  //height: 1100 *fem, // height of container that hold email ect to signup button
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48 * fem),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // text fields as containers
                        MyTextField(
                          controller: matriculeController,
                          labelText: 'Matricule',
                          hintText: '',
                          obscureText: false,
                          mode: 'number',
                        ),
                        MyTextField(
                          controller: lastnameController,
                          labelText: 'Last name',
                          hintText: '',
                          obscureText: false,
                        ),
                        MyTextField(
                          controller: firstnameController,
                          labelText: 'First name',
                          hintText: '',
                          obscureText: false,
                        ),
                        MyTextField(
                          controller: usernameController,
                          labelText: 'Username',
                          hintText: '',
                          obscureText: false,
                        ),
                        MyTextField(
                          controller: emailController,
                          labelText: 'Email',
                          hintText: '',
                          obscureText: false,
                        ),
                        MyTextField(
                          controller: passwordController,
                          labelText: 'Password',
                          hintText: '',
                          obscureText: true,
                        ),
                        MyTextField(
                          controller: confirmpasswordController,
                          labelText: 'Confirm Password',
                          hintText: '',
                          obscureText: true,
                        ),

                        Container(
                          // signupwithyoureE9b (1:1324)
                          margin: EdgeInsets.fromLTRB(
                              5 * fem, 30 * fem, 0 * fem, 20 * fem),
                          child: Text(
                            'Sign up with your e-mail and password',
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
                        MyButton(
                          text: 'Sign Up',
                          onTap: signUserUpAPI,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
