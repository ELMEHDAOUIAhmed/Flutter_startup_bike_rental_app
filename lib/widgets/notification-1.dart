import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
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
        // notification1zUV (7:266)
        width: double.infinity,
        height: 183*fem,
        child: Container(
          // cardJzy (7:255)
          padding: EdgeInsets.fromLTRB(74*fem, 34*fem, 73.8*fem, 21*fem),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            gradient: LinearGradient (
              begin: Alignment(0.217, 1),
              end: Alignment(0.2, -1),
              colors: <Color>[Color(0xff009efd), Color(0xff000000)],
              stops: <double>[0, 1],
            ),
            borderRadius: BorderRadius.only (
              topLeft: Radius.circular(48*fem),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // haibikesdurofullseWr9 (7:258)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.2*fem, 26*fem),
                child: Text(
                  'Closest available Station for you!',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 15*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2175*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // distanceAA1 (7:259)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.2*fem, 0*fem),
                child: Text(
                  'Distance',
                  textAlign: TextAlign.right,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 13*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2175*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // mFBT (7:260)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.2*fem, 9*fem),
                child: Text(
                  '150 m',
                  textAlign: TextAlign.right,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 21*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2175*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // autogroupgduh91w (KXC7837vRnk3YKoPvVGdUh)
                width: double.infinity,
                height: 32*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // buttonghost1rh3 (7:257)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57.8*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 104.2*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0x7fc7c7cc)),
                            color: Color(0x7f000000),
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Continue',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // buttonghost1p1b (7:261)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 104.2*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0x7fc7c7cc)),
                          color: Color(0x7f000000),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel !',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
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
          );
  }
}