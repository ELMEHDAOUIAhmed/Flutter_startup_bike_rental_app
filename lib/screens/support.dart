import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/components/my_button.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/components/my_textfield.dart';
import 'package:myapp/components/my_button.dart';

class Support extends StatelessWidget {
  // variables to hold user input
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final msgController = TextEditingController();

  void SendSupport() {}

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // support7Q1 (1:375)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // header1VP (I1:376;0:1414)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    32 * fem, 64 * fem, 32 * fem, 158 * fem),
                width: 414 * fem,
                height: 293 * fem,
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
                      // iconchevronleftnuT (I1:376;0:1417)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 14.72 * fem),
                      width: 18.13 * fem,
                      height: 17.28 * fem,
                      child: Image.asset(
                        'assets/page-1/images/icon-chevron-left-UAq.png',
                        width: 18.13 * fem,
                        height: 17.28 * fem,
                      ),
                    ),
                    Text(
                      // mystatistics4ry (I1:376;0:1416)
                      'Support',
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
            ),
            Positioned(
              // inputsa4d (1:377)
              left: 0 * fem,
              top: 167 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    32 * fem, 55 * fem, 32 * fem, 341 * fem),
                width: 414 * fem,
                height: 900 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48 * fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 414 * fem,
                      //height: 830 * fem,
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
                            controller: nameController,
                            labelText: 'Name',
                            hintText: '',
                            obscureText: false,
                          ),
                          MyTextField(
                            controller: emailController,
                            labelText: 'Email',
                            hintText: '',
                            obscureText: false,
                          ),
                          Container(
                            height: 150*fem,
                            child: MyTextField(
                              controller: msgController,
                              labelText: 'Your Message',
                              hintText: '',
                              obscureText: true,
                            ),
                          ),
                          // add button here as a container
                          MyButton(
                            text: 'Send',
                            onTap: SendSupport,
                          ),
                        ],
                      ),
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
