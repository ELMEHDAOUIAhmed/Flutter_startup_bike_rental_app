import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';


import './login.dart';

class OnboardingThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // onboardingDDw (1:4)
        //padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 89*fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // image12oG1 (5:530)
              //margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
              width: 414 * fem,
              height: 597 * fem,
              child: Image.asset(
                'assets/page-1/images/image-12.png',
              ),
            ),
            Container(
              // locateNuT (1:5)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 24 * fem),
              child: Text(
                'Ride',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xff010a10),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              // excepteursintoccaePZf (1:6)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 91 * fem),
              constraints: BoxConstraints(
                maxWidth: 284 * fem,
              ),
              child: Text(
                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 21 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              // autogroupajpdp9B (VcALrFA5Bny6Vkv33eAJpD)
              width: double.infinity,
              height: 19 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                    SizedBox(
                      width: 60,
                      child: Text(
                          '', 
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff040104),
                          ),
                      ),
                    ),

                  Container(
                    // autogroupry9fBP3 (VcAM5KccjqZGeaKkz4ry9f)
                    padding: EdgeInsets.fromLTRB(
                        103 * fem, 0 * fem, 0 * fem, 0 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // image14Ud3 (1:2)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 98 * fem, 1 * fem),
                          width: 79 * fem,
                          height: 14 * fem,
                          child: Image.asset(
                            'assets/page-1/images/select_3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          // nextyTK (1:11)
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
                            'Next',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
