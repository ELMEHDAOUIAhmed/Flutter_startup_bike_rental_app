import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

// this button will be used for
// Signup
// Login
// Support
// Verification Continue
// Support "Send"
// Statistics "Share"
// End ride
// Continue , Cancel

class MyButton extends StatelessWidget {

  final String text;
  final Function() onTap;
  const MyButton({
  @required this.text,
  @required this.onTap,});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return GestureDetector(
        onTap: onTap, // button function
        child: Container(
      margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 0 * fem),
      //child: TextButton(
        // onPressed: () {
          
        // },
        // style: TextButton.styleFrom(
        //   padding: EdgeInsets.zero,
        // ),
        child: Container(
          width: 350 * fem,
          height: 70 * fem,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35 * fem),
            gradient: const LinearGradient(
              begin: Alignment(0.217, 1),
              end: Alignment(0.2, -1),
              colors: <Color>[Color(0xff009efd), Color(0xff000000)],
              stops: <double>[0, 1],
            ),
          ),
          child: Center(
            child: Text(
              text, // button label text
              textAlign: TextAlign.center,
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
      //),
    ));
  }
}
