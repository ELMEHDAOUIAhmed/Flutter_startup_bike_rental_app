import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // paymentuTK (1:555)
        width: double.infinity,
        height: 896*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headero2u (I1:556;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 156.5*fem, 59*fem),
                width: 414*fem,
                height: 255*fem,
                decoration: const BoxDecoration (
                  gradient: LinearGradient (
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
                      // iconchevronleftmP3 (I1:556;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.37*fem, 109.72*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 18.13*fem,
                          height: 17.28*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-chevron-left-2iH.png',
                            width: 18.13*fem,
                            height: 17.28*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // supportrequestyk1 (I1:556;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Payment',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 21*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
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
              // rectangleRru (1:557)
              left: 0*fem,
              top: 172*fem,
              child: Align(
                child: SizedBox(
                  width: 414*fem,
                  height: 724*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(48*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // inputwhiteshadow1copy2h3j (1:566)
              left: 32*fem,
              top: 391*fem,
              child: Container(
                width: 350*fem,
                height: 47*fem,
                child: Container(
                  // autogroupmfxhBzV (NErgbsm1tgo7knU9jzmfxH)
                  width: 349*fem,
                  height: 26*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // contenthxq (I1:566;0:1316)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 224*fem, 0*fem),
                        child: Text(
                          'USTHB Pay',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 21*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff080608),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        // pathnUV (1:567)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                        width: 6*fem,
                        height: 12*fem,
                        child: Image.asset(
                          'assets/page-1/images/path-nW1.png',
                          width: 6*fem,
                          height: 12*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // inputwhiteshadow1copy25Ch (1:569)
              left: 32*fem,
              top: 461*fem,
              child: Container(
                width: 350*fem,
                height: 47*fem,
                child: Container(
                  // autogroupdtkfmLR (NErguT64mWc9wtvVXodtKF)
                  width: 349*fem,
                  height: 26*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // content5ru (I1:569;0:1316)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 157*fem, 0*fem),
                        child: Text(
                          'Payment Options',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 21*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff0e0c0e),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        // pathky3 (1:570)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                        width: 6*fem,
                        height: 12*fem,
                        child: Image.asset(
                          'assets/page-1/images/path-WCu.png',
                          width: 6*fem,
                          height: 12*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // image73x9 (5:331)
              left: 0*fem,
              top: 99*fem,
              child: Align(
                child: SizedBox(
                  width: 424*fem,
                  height: 292*fem,
                  child: Image.asset(
                    'assets/page-1/images/image-7.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // jKB (5:343)
              left: 57*fem,
              top: 286*fem,
              child: Align(
                child: SizedBox(
                  width: 34*fem,
                  height: 35*fem,
                  child: Text(
                    '\$5',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 28*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175*ffem/fem,
                      color: Color(0xff0a090a),
                      decoration: TextDecoration.none,
                    ),
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