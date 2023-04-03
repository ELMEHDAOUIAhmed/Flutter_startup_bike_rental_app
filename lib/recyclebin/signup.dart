import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import './login.dart';

enum AuthMode { Signup, Login }

class Sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
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
              padding: EdgeInsets.fromLTRB(32 * fem, 50 * fem, 32 * fem, 91* fem),
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
                                        builder: (context) => Log_in()));
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
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // card6CV (1:1320)
              left: 0 * fem,
              top: 148 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    27 * fem, 46 * fem, 32 * fem, 353 * fem),
                width: 414 * fem,
                height: 748 * fem,
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
                      // inputwhiteshadow1uvd (1:1325)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 0 * fem, 31 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 350 * fem,
                          height: 56 * fem,
                          child: Container(
                            // autogroup8li1b2m (NErzybeFn6WYMCLAkw8Li1)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24 * fem, 14 * fem),
                            width: 326 * fem,
                            height: 42 * fem,
                            child: Container(
                              // autogroupfst3717 (NEs16BHdCM7UDp1SgvFsT3)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 62 * fem, 0 * fem),
                              width: 264 * fem,
                              height: double.infinity,
                              child: Text(
                                'Email',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff030303),
                                ),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // inputwhiteshadow3xnR (1:1323)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 0 * fem, 30 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 350 * fem,
                          height: 56 * fem,
                          child: Container(
                            // autogroupef2m2nH (NErzVCHv1cim2QzQxPeF2M)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24 * fem, 14 * fem),
                            width: 326 * fem,
                            height: 42 * fem,
                            child: Container(
                              // autogroupryj3Lny (NErzbC7vSf1uk93uRZryj3)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 172 * fem, 0 * fem),
                              width: 154 * fem,
                              height: double.infinity,
                              child: Text(
                                'Password',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff030303),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // inputwhiteshadow4QH3 (1:1322)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5 * fem, 10 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 350 * fem,
                          height: 56 * fem,
                          child: Container(
                            // autogroupfmjmsAd (NEryzD8DFvdCYk2sh3FMJM)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24 * fem, 14 * fem),
                            width: 326 * fem,
                            height: 42 * fem,
                            child: Container(
                              // autogroupjgw7n2h (NErz7HkkNvvDyqP7AHjGw7)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 137 * fem, 0 * fem),
                              width: 189 * fem,
                              height: double.infinity,
                              child: Text(
                                'Confirm password',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff030303),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // signupwithyoureE9b (1:1324)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 0 * fem, 20 * fem),
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
                    Container(
                      // buttonwhite1umX (1:1326)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 350 * fem,
                          height: 70 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 * fem),
                            gradient: LinearGradient(
                              begin: Alignment(0.217, 1),
                              end: Alignment(0.2, -1),
                              colors: <Color>[
                                Color(0xff009efd),
                                Color(0xff000000)
                              ],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.center,
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





