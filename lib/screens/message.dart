import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // message4pm (1:332)
        width: double.infinity,
        height: 896*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerkBo (I1:333;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 158.5*fem, 59*fem),
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
                      // iconchevronleftvVb (I1:333;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/page-1/images/icon-chevron-left-wSu.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Container(
                      // supportrequestbLq (I1:333;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Message',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 21*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: Color(0xfffbf0fb),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // chatT89 (1:334)
              left: 0*fem,
              top: 116*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(21*fem, 24*fem, 21*fem, 429*fem),
                width: 414*fem,
                height: 780*fem,
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
                      // bubble1VKj (1:336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                      width: 284*fem,
                      height: 105*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // groupPAD (1:337)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 284*fem,
                              height: 105*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // trianglesLH (1:339)
                                    width: 13*fem,
                                    height: 18*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/triangle-Y9B.png',
                                      width: 13*fem,
                                      height: 18*fem,
                                    ),
                                  ),
                                  Container(
                                    // rectangleNnq (1:338)
                                    width: 271*fem,
                                    height: 105*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle.png',
                                      width: 271*fem,
                                      height: 105*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // fuscevehiculadoloru25 (1:340)
                            left: 29*fem,
                            top: 16*fem,
                            child: Align(
                              child: SizedBox(
                                width: 218*fem,
                                height: 55*fem,
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
                            // 8fX (1:341)
                            left: 29*fem,
                            top: 79*fem,
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24*fem,
                    ),
                    Container(
                      // bubble2yw3 (1:342)
                      margin: EdgeInsets.fromLTRB(88*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 87*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // autogroupb9xhHgq (NErdYoBQb6qpM4oX5DB9xh)
                            padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 24*fem, 10*fem),
                            width: 271*fem,
                            height: double.infinity,
                            decoration:const BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/rectangle-2zH.png',
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // dolorarcusitamevzh (1:345)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                  constraints: BoxConstraints (
                                    maxWidth: 231*fem,
                                  ),
                                  child: Text(
                                    'Dolor arcu, sit ame blandit dolor mollis nec. Done viverra…',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // ZXs (1:346)
                                  width: double.infinity,
                                  child: Text(
                                    '19:32',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 13*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0x4c3d003e),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // trianglesYZ (1:344)
                            width: 13*fem,
                            height: 18*fem,
                            child: Image.asset(
                              'assets/page-1/images/triangle-a1T.png',
                              width: 13*fem,
                              height: 18*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24*fem,
                    ),
                    Container(
                      // bubble3AnZ (1:347)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                      width: double.infinity,
                      height: 87*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // triangleH6V (1:349)
                            width: 13*fem,
                            height: 18*fem,
                            child: Image.asset(
                              'assets/page-1/images/triangle.png',
                              width: 13*fem,
                              height: 18*fem,
                            ),
                          ),
                          Container(
                            // autogrouptygq12V (NErdqTNKLstM1drmi2tygq)
                            padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 10*fem),
                            width: 271*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/rectangle-ja5.png',
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // vehiculadolorarcugPX (1:350)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                  constraints: BoxConstraints (
                                    maxWidth: 207*fem,
                                  ),
                                  child: Text(
                                    'Vehicula dolor arcu, sit ame blandit dolor mollis nec.',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // Ygd (1:351)
                                  width: double.infinity,
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
          ],
        ),
      ),
          );
  }
}