import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'package:myapp/components/my_button.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // verificationDyP (1:1297)
        width: double.infinity,
        height: 896*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerKWd (I1:1298;0:1414)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 64*fem, 32*fem, 158*fem),
                width: 414*fem,
                height: 293*fem,
                decoration: const BoxDecoration (
                  gradient: LinearGradient (
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
                      // iconchevronleftWr1 (I1:1298;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 18.13*fem,
                          height: 17.28*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-chevron-left-qQ1.png',
                            width: 18.13*fem,
                            height: 17.28*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // mystatisticsMrd (1:1299)
                      margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'Verification',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 32*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // cardRrV (1:1300)
              left: 0*fem,
              top: 167*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 50*fem, 32*fem, 353*fem),
                width: 414*fem,
                height: 729*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(48*fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouphtnqGMK (NEry7pQWaJRCay8zArHtNq)
                      margin: EdgeInsets.fromLTRB(44*fem, 0*fem, 206*fem, 10.5*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // AxV (1:1306)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 62*fem, 0*fem),
                            child: Text(
                              '5',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 32*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff030303),
                              ),
                            ),
                          ),
                          Text(
                            // Twb (1:1307)
                            '3',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff030303),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // inputszAq (1:1308)
                      margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 24*fem, 33*fem),
                      width: double.infinity,
                      height: 1.5*fem,
                    ),
                    Container(
                      // donecviverraeleifeu2u (1:1302)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                      constraints: BoxConstraints (
                        maxWidth: 253*fem,
                      ),
                      child: Text(
                        'Donec viverra eleifend lacus, vitae ullamcorper metus sed.',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2175*ffem/fem,
                          color: Color(0xff030303),
                        ),
                      ),
                    ),
                    Container(
                      // ZdF (1:1303)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 41*fem),
                      child: Text(
                        'ah*********@mail.com',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: Color(0xff030303),
                        ),
                      ),
                    ),
                    Container(
                      // didntreceivesmss89 (1:1304)
                      margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 40*fem),
                      child: Text(
                        'Didn’t receive EMAIL?',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2175*ffem/fem,
                        ),
                      ),
                    ),
                    TextButton(
                      // buttonwhite195f (1:1305)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(35*fem),
                          gradient: const LinearGradient (
                            begin: Alignment(0.217, 1),
                            end: Alignment(0.2, -1),
                            colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
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