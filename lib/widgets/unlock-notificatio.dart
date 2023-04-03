import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // unlocknotificatioi9T (7:388)
        width: double.infinity,
        height: 535*fem,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(48*fem),
          gradient: LinearGradient (
            begin: Alignment(0.217, 1),
            end: Alignment(0.2, -1),
            colors: <Color>[Color(0xff009efd), Color(0xff000000)],
            stops: <double>[0, 1],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              offset: Offset(0*fem, 2*fem),
              blurRadius: 16*fem,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              // haibikesdurofullse7SV (7:377)
              left: 75*fem,
              top: 54*fem,
              child: Align(
                child: SizedBox(
                  width: 252*fem,
                  height: 103*fem,
                  child: Text(
                    'Put your Student\n Id Card\nclose to the lock',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 28*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xfff7f0f0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // image32wAd (7:379)
              left: 6*fem,
              top: 156*fem,
              child: Align(
                child: SizedBox(
                  width: 309*fem,
                  height: 303.08*fem,
                  child: Image.asset(
                    'assets/page-1/images/student_id.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // image33dJM (7:387)
              left: 258*fem,
              top: 324*fem,
              child: Align(
                child: SizedBox(
                  width: 89*fem,
                  height: 124*fem,
                  child: Image.asset(
                    'assets/page-1/images/nfc_unlocked.png',
                    //'assets/page-1/images/nfc_locked.png',
                    fit: BoxFit.cover,
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