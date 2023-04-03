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
        // summaryH7T (7:278)
        width: double.infinity,
        height: 391*fem,
        child: Container(
          // cardcQd (7:267)
          padding: EdgeInsets.fromLTRB(36*fem, 45*fem, 28*fem, 78*fem),
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
            boxShadow: [
              BoxShadow(
                color: Color(0x33000000),
                offset: Offset(0*fem, 2*fem),
                blurRadius: 16*fem,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // minsMWd (7:271)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 35*fem),
                child: Text(
                  'Ride summary : ',
                  textAlign: TextAlign.right,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 25*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2175*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // autogroupqw81pv1 (KXC7breuD4E3iDXNGDqw81)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // estimatedtimewDw (7:274)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 98*fem, 0*fem),
                      child: Text(
                        'Elapsed time :',
                        textAlign: TextAlign.right,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Text(
                      // minsDx9 (7:277)
                      '00H-18m-05s',
                      textAlign: TextAlign.right,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 21*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupgf8hjvV (KXC7kGaYsQMzduzpWBGF8h)
                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 24*fem, 14*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // distance3wB (7:273)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 113*fem, 0*fem),
                      child: Text(
                        'Total Distance :',
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
                    Text(
                      // m8Bw (7:276)
                      '190.86 M',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 21*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupwaaySiR (KXC7s1tJraCHhMZkHFWaAy)
                margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 45*fem, 41*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // per30minsjxR (7:272)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 150*fem, 0*fem),
                      child: Text(
                        'Total Price :',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Text(
                      // RaM (7:275)
                      '\$ 0.55',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 21*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // per30minsLhK (7:270)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 6*fem),
                child: Text(
                  'Reputation',
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
                // pMb (7:269)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                child: Text(
                  '+1',
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 21*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2175*ffem/fem,
                    color: Color(0xffffffff),
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