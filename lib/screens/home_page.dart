import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'profile_menu.dart';

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // map1fLH (1:24)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group145GjP (1:37)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 415 * fem,
                height: 896 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // image369HP (3:3)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 414 * fem,
                          height: 896 * fem,
                          child: Image.asset(
                            'assets/page-1/images/image-36.png',
                            // map , after it will dynamique not a photo
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle277p8d (1:38)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 414 * fem,
                          height: 129 * fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-277.png',
                            // top blur
                            width: 414 * fem,
                            height: 129 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group143Hnu (1:39)
                      left: 151 * fem,
                      top: 42 * fem,
                      child: Container(
                        width: 111 * fem,
                        height: 44 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // haibikesdurofullseP5F (1:41)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 10 * fem),
                              child: Text(
                                'Your location >',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2189999989 * ffem / fem,
                                  color: Color(0xff000000),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Text(
                              // haibikesdurofullse2nR (1:40)
                              'Rue Ahmed zin',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2189999989 * ffem / fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // image19YEy (1:44)
                      left: 28 * fem,
                      top: 49 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 21 * fem,
                          height: 15 * fem,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProfileMenu()));
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              //'assets/page-1/images/image-19.png',
                              'assets/page-1/images/menu.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // image34byw (1:84)
                      //refrech location , change it postion after
                      left: 350 * fem,
                      top: 650 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 51 * fem,
                          height: 51 * fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                             //'assets/page-1/images/image-34.png',
                              'assets/page-1/images/gps.png',
                              //refresh location
                              fit: BoxFit.cover,
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
