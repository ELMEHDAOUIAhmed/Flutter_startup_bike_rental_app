import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '/screens/profile_menu.dart';
import '/widgets/nav_bar.dart';

class Ride extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
          width: double.infinity,
          child: Container(
            // map1fLH (1:24)
            width: double.infinity,
            height: 260 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
    
                Positioned(
                  // cardsgZ (1:99)
                  left: 1 * fem,
                  top: 625 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        14 * fem, 26 * fem, 14 * fem, 81 * fem),
                    width: 414 * fem,
                    height: 271 * fem,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48 * fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // image327L1 (1:80)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: TextButton(
                            onPressed: () {
                              // //take a ride button
    
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 386 * fem,
                              height: 56 * fem,
                              child: Image.asset(
                                //'assets/page-1/images/image-32.png',
                                'assets/page-1/images/takeride_button.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          // image35nh3 (1:120)
                          onPressed: () {
                            //promotion button
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 386 * fem,
                            height: 93 * fem,
                            child: Image.asset(
                              //'assets/page-1/images/image-35.png',
                              'assets/page-1/images/promotion.png',
                              fit: BoxFit.cover,
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
        ),
    );
    
  }
}

