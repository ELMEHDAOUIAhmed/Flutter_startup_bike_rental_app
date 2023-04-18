import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import './profile_welcome.dart';

import 'package:myapp/components/my_button.dart';

class Mystatistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // mystatisticskM3 (1:488)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerrQ5 (I1:489;0:1414)
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
                      // iconchevronleftFSD (I1:489;0:1417)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 14.72 * fem),
                      width: 18.13 * fem,
                      height: 17.28 * fem,
                      child: GestureDetector(
                        onTap: () {
                      Navigator.pushNamed(context,'/profilemenu',);
                        },
                        child: const Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 30,
                      ),
                      ),
                    ),
                    Text(
                      // mystatisticsi4u (I1:489;0:1416)
                      'My Statistics',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xfffaebfa),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // cards1ph (1:490)
              left: 0 * fem,
              top: 167 * fem,
              child: Container(
                width: 414 * fem,
                height: 729 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangleJoo (1:491)
                      left: 0 * fem,
                      top: 50 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 414 * fem,
                          height: 679 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(48 * fem),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // card1PKT (1:492)
                      left: 33 * fem,
                      top: 0 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            24 * fem, 27 * fem, 177 * fem, 24 * fem),
                        width: 349 * fem,
                        height: 116 * fem,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/page-1/images/card.png',
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // clockci1 (1:497)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24 * fem, 1 * fem),
                              width: 28 * fem,
                              height: 28 * fem,
                              child: Image.asset(
                                'assets/page-1/images/clock.png',
                                width: 28 * fem,
                                height: 28 * fem,
                              ),
                            ),
                            Container(
                              // autogroupyheugC5 (NErfbzFofmDgPrVu8qYHeu)
                              width: 96 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // durationb49 (1:494)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                    child: Text(
                                      'Duration',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0x4c030303),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroup7rfksXT (NErfiV4yoZCvg4EM9H7RFK)
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // C3w (1:496)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 10 * fem, 0 * fem),
                                          child: Text(
                                            '28',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 32 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff0a090a),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // minsgzh (1:495)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 3 * fem),
                                          child: Text(
                                            'mins',
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // card2ZHo (1:500)
                      left: 33 * fem,
                      top: 140 * fem,
                      child: Container(
                        width: 349 * fem,
                        height: 116 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copy2rGu (1:501)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349 * fem,
                                  height: 116 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-141-copy-2.png',
                                    width: 349 * fem,
                                    height: 116 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // caloriesjLh (1:504)
                              left: 76 * fem,
                              top: 24 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 72 * fem,
                                  height: 22 * fem,
                                  child: Text(
                                    'Calories',
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
                              // cal13K (1:505)
                              left: 127 * fem,
                              top: 67 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 22 * fem,
                                  child: Text(
                                    'cal',
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
                              ),
                            ),
                            Positioned(
                              // UBo (1:506)
                              left: 76 * fem,
                              top: 53 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 41 * fem,
                                  height: 39 * fem,
                                  child: Text(
                                    '34',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ZU9 (1:507)
                              left: 24 * fem,
                              top: 42 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.2 * fem,
                                  height: 33.6 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/.png',
                                    width: 25.2 * fem,
                                    height: 33.6 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // card3dD7 (1:511)
                      left: 33 * fem,
                      top: 280 * fem,
                      child: Container(
                        width: 349 * fem,
                        height: 116 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141uwK (1:512)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349 * fem,
                                  height: 116 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-141.png',
                                    width: 349 * fem,
                                    height: 116 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // mPrV (1:515)
                              left: 161 * fem,
                              top: 67 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 19 * fem,
                                  height: 22 * fem,
                                  child: Text(
                                    'm',
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
                              ),
                            ),
                            Positioned(
                              // distanceTLZ (1:516)
                              left: 76 * fem,
                              top: 24 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 80 * fem,
                                  height: 22 * fem,
                                  child: Text(
                                    'Distance',
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
                              // i1b (1:517)
                              left: 76 * fem,
                              top: 53 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 75 * fem,
                                  height: 39 * fem,
                                  child: Text(
                                    '3752',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // distanceiconyy7 (1:518)
                              left: 25 * fem,
                              top: 46 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.77 * fem,
                                  height: 25.12 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/distanceicon.png',
                                    width: 25.77 * fem,
                                    height: 25.12 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // card4epM (1:523)
                      left: 33 * fem,
                      top: 420 * fem,
                      child: Container(
                        width: 349 * fem,
                        height: 116 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copy38Dj (1:524)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349 * fem,
                                  height: 116 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-141-copy-3.png',
                                    width: 349 * fem,
                                    height: 116 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // carbonoqf (1:527)
                              left: 76 * fem,
                              top: 24 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 67 * fem,
                                  height: 22 * fem,
                                  child: Text(
                                    'Carbon',
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
                              // ozgeZ (1:528)
                              left: 107 * fem,
                              top: 67 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 22 * fem,
                                  height: 22 * fem,
                                  child: Text(
                                    'oz',
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
                              ),
                            ),
                            Positioned(
                              // mAD (1:529)
                              left: 76 * fem,
                              top: 53 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 21 * fem,
                                  height: 39 * fem,
                                  child: Text(
                                    '6',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // F5P (1:530)
                              left: 26.0522460938 * fem,
                              top: 41 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 23.65 * fem,
                                  height: 32.96 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/-1sj.png',
                                    width: 23.65 * fem,
                                    height: 32.96 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // buttonwhite1vhK (1:532)
                      left: 32 * fem,
                      top: 578 * fem,
                      child: Container(
                        width: 350 * fem,
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
                            'Share',
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
