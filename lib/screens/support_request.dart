import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // supportrequestdWM (1:366)
        width: double.infinity,
        height: 896*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerKty (I1:367;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 114.5*fem, 59*fem),
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
                      // iconchevronleftv85 (I1:367;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: const Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Container(
                      // supportrequestC5b (I1:367;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Support Request',
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
              // messagesFJm (1:368)
              left: 0*fem,
              top: 116*fem,
              child: Container(
                width: 414*fem,
                height: 780*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangleLLD (1:369)
                      left: 0*fem,
                      top: 56*fem,
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
                      // message5Qay (1:370)
                      left: 33*fem,
                      top: 0*fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 349*fem,
                          height: 114*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group141copyszM (I1:370;0:1401)
                                left: 0*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 349*fem,
                                    height: 114*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-141-copy-HBs.png',
                                      width: 349*fem,
                                      height: 114*fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // fuscevehiculadolorkHT (I1:370;0:1404)
                                left: 20*fem,
                                top: 56*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 288*fem,
                                    height: 37*fem,
                                    child: Text(
                                      'Fusce vehicula dolor arcu, sit ame blandit dolor mollis nec. Done viverra…',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // CfF (I1:370;0:1405)
                                left: 297*fem,
                                top: 20*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 32*fem,
                                    height: 16*fem,
                                    child: Text(
                                      '19:24',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0x4c000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // mailTbB (I1:370;0:1406)
                                left: 20*fem,
                                top: 20*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 20*fem,
                                    height: 16*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/mail.png',
                                      width: 20*fem,
                                      height: 16*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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