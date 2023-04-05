import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String labelText;

  MyTextField({
    Key key,
    @required this.controller,
    @required this.labelText,
    @required this.hintText,
    @required this.obscureText,
    // wee need confirm password after
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      color: Colors.white, // Material app background color
      child: Container(
        width: 350 * fem,
        height: 80 * fem,
        child: Container(
          // autogroup8li1b2m (NErzybeFn6WYMCLAkw8Li1)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 24 * fem, 14 * fem),
          width: 326 * fem,
          height: 42 * fem,
          child: Container(
            // autogroupfst3717 (NEs16BHdCM7UDp1SgvFsT3)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
            width: 264 * fem,
            height: double.infinity,
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
              ),
              //obscureText: true, used to hide password
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 21 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2175 * ffem / fem,
                color: Color(0xff030303),
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}