import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/screens/starting_page.dart';

import 'package:myapp/utils.dart';
import './support.dart';
import 'package:myapp/screens/profile_welcome.dart';


class Ridehistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // ridehistoryfQR (1:1234)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerNZj (I1:1235;0:1422)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    32 * fem, 59 * fem, 141.5 * fem, 59 * fem),
                width: 414 * fem,
                height: 255 * fem,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.217, 1),
                    end: Alignment(0.2, -1),
                    colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconchevronlefty3j (I1:1235;0:1425)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 92.37 * fem, 109.72 * fem),
                      width: 18.13 * fem,
                      height: 17.28 * fem,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile_welcome()));
                        },
                        child: const Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 30,
                      ),
                      ),
                    ),
                    Container(
                      // supportrequestF1F (I1:1235;0:1424)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 97 * fem),
                      child: Text(
                        'Ride history',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // suggestiontpu (1:1236)
              left: 0 * fem,
              top: 177 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(22 * fem, 39 * fem, 22 * fem, 86 * fem),
                width: 414 * fem,
                height: 724 * fem,
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
                      // HOLDS DATE DURATION PRICE
                      margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 404 * fem),
                      width: double.infinity,
                      height: 63 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // priceqtZ (1:1238)
                            left: 290 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 46 * fem,
                                height: 22 * fem,
                                child: Text(
                                  'Price',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0x4c000000),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // inputwhiteshadow1copy375P (1:1239)
                            left: 0 * fem,
                            top: 16 * fem,
                            child: Container(
                              width: 400 * fem,
                              height: 47 * fem,
                              child: Container(
                                // autogroup5xcmc29 (NErvQUm1XUGgo6WBJ25xcM)
                                width: 368 * fem,
                                height: 26 * fem,
                                child: Row(
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupabedvYd (NErvhdw5z11K29EPU7ABED)
                                      padding: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // contentE3X (I1:1239;0:1316)
                                            //margin: EdgeInsets.fromLTRB(0 * fem,0 * fem, 118 * fem, 4 * fem),
                                            child: Text(
                                              '15/02/2023',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 18 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff000000),
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(80 * fem,0 * fem, 0 * fem, 0 * fem),
                                            child: Text(
                                              // Wmj (1:1258)
                                              '00H:05m',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff000000),
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // autogroupjsdxS9b (NErvZE1SKesN6SkwE9jsDX)
                                            margin: EdgeInsets.fromLTRB(45 * fem,0 * fem, 0 * fem, 0 * fem),
                                            child: Text(
                                              '\$ 0.40',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff000000),
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // carbongZj (1:1252)
                            left: 170 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 80 * fem,
                                height: 22 * fem,
                                child: Text(
                                  'Duration',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0x4c000000),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // signupwithyourex1T (1:1263)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 22 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 125 * fem,
                      ),
                      child: Text(
                        'Missing rides ? \nContact Support',
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
                      // buttonwhite1baD (1:1264)
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 10 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Support()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 70 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 * fem),
                            gradient: const LinearGradient(
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
                              'Support',
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
