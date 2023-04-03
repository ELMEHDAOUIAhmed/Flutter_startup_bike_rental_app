import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // settings41j (1:307)
        width: double.infinity,
        height: 896*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerG1K (I1:308;0:1414)
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
                      // iconchevronleftmcH (I1:308;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/page-1/images/icon-chevron-left-aUm.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Text(
                      // mystatistics2YD (I1:308;0:1416)
                      'Settings',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 32*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175*ffem/fem,
                        color: Color(0xffffffff),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // inputsHyw (1:309)
              left: 0*fem,
              top: 167*fem, // white bar postion more == go down , less==go up

              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 35*fem, 32*fem, 283*fem),
                width: 414*fem,
                height: 900*fem, // size of container , fixed over flow of notification
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(48*fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      // phonenumberK9w (1:327)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // contentykH (1:329)
                              'Phone Number',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 21*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            Container(
                              // autogroupeiysu1f (NErcx4gHFkJ9vucy7KEiys)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // Zru (1:330)
                                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 194*fem, 0*fem),
                                    child: Text(
                                      '406 765 43 92',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 21*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // pathrb7 (1:328)
                                    width: 6*fem,
                                    height: 12*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/path.png',
                                      width: 6*fem,
                                      height: 12*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    TextButton(
                      // favouriteaddressiNR (1:322)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // contentcopymbb (1:324)
                              'Favourite Address',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 21*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            Container(
                              // autogroupjtzqgCm (NErcfpeLvGL3EQHr6DJtzq)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // marbellaZXT (1:325)
                                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 249*fem, 0*fem),
                                    child: Text(
                                      'Marbella',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 21*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // pathcopyFQH (1:323)
                                    width: 6*fem,
                                    height: 12*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/path-copy.png',
                                      width: 6*fem,
                                      height: 12*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    TextButton(
                      // languageYeH (1:317)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // contentcopy21nm (1:319)
                              'Language',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 21*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            Container(
                              // autogrouphs498Mb (NErcQARmZzfhgnaWXvHs49)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // englishqG1 (1:320)
                                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 262*fem, 0*fem),
                                    child: Text(
                                      'English',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 21*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // pathcopy2v2Z (1:318)
                                    width: 6*fem,
                                    height: 12*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/path-copy-2.png',
                                      width: 6*fem,
                                      height: 12*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // notificationsCVs (1:314)
                      width: double.infinity,
                      height: 50*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // inputwhiteshadow1vwf (1:315)
                            left: 0*fem,
                            top: 3*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 350*fem,
                                height: 47*fem,
                                child: Container(
                                  // autogroup6rc9DA5 (NErc9fqvC9cvSx6juF6RC9)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                  width: 326*fem,
                                  height: 26*fem,
                                  child: Text(
                                    'Notifications',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // controlstableviewrowxaccessory (1:316)
                            left: 299*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 51*fem,
                                height: 31*fem,
                                child: Image.asset(
                                  //On
                                  //'assets/page-1/images/controls-table-view-row-x-accessory-right-dark-switch-off.png',
                                  //Off
                                  'assets/page-1/images/controls-table-view-row-x-accessory-right-dark-switch-on-copy.png',
                                  
                                  width: 51*fem,
                                  height: 31*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // trafficFky (1:311)
                      width: double.infinity,
                      height: 50*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // inputwhiteshadow1nku (1:312)
                            left: 0*fem,
                            top: 3*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 350*fem,
                                height: 47*fem,
                                child: Container(
                                  // autogroupnbyorEy (NErbrBM4bnRZrFbE2ynbyo)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                                  width: 326*fem,
                                  height: 26*fem,
                                  child: Text(
                                    'Traffic',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // controlstableviewrowxaccessory (1:313)
                            left: 299*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 51*fem,
                                height: 31*fem,
                                child: Image.asset(
                                  //On
                                  //'assets/page-1/images/controls-table-view-row-x-accessory-right-dark-switch-off.png',
                                  //Off
                                  'assets/page-1/images/controls-table-view-row-x-accessory-right-dark-switch-on-copy.png',
                                  width: 51*fem,
                                  height: 31*fem,
                                ),
                              ),
                            ),
                          ),
                          // Positioned(
                          //   // controlstableviewrowxaccessory (5:354)
                          //   left: 299*fem,
                          //   top: 0*fem,
                          //   child: Align(
                          //     child: SizedBox(
                          //       width: 51*fem,
                          //       height: 31*fem,
                          //       child: Image.asset(
                          //         'assets/page-1/images/controls-table-view-row-x-accessory-right-dark-switch-off-qnV.png',
                          //         width: 51*fem,
                          //         height: 31*fem,
                          //       ),
                          //     ),
                          //   ),
                          // ),
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