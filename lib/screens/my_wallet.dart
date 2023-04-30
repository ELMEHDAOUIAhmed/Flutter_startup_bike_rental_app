import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import './payment.dart';

class Mywallet extends StatefulWidget {
  final Map<String, dynamic> user;
  const Mywallet({Key key, this.user}) : super(key: key);
  @override
  State<Mywallet> createState() => _MywalletState();
}

class _MywalletState extends State<Mywallet> {
  double sold = 0.0;
  @override
  Widget build(BuildContext context) {
    if (widget.user != null) {
      sold = widget.user['sold'];
    }
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // mywallet9f3 (1:610)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerSu3 (I1:611;0:1414)
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
                      // iconchevronleftmcH (I1:308;0:1417)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 14.72 * fem),
                      width: 18.13 * fem,
                      height: 17.28 * fem,
                      child: const Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      // mystatistics2YD (I1:308;0:1416)
                      'My Wallet',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xffffffff),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangleB7s (1:612)
              left: 0 * fem,
              top: 251 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 645 * fem,
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
              // balancetiR (1:616)
              left: 32 * fem,
              top: 425 * fem,
              child: Container(
                width: 350 * fem,
                height: 77 * fem,
                child: Container(
                  // autogroupxs7oDEu (NErhdvsHVYNJYT1tMJXS7o)
                  width: 326 * fem,
                  height: 57 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupdnxf8Ms (NErhjm2uMfS65MBiyPdNXF)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 127 * fem, 0 * fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // contentdpR (1:618)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 25 * fem, 5 * fem),
                              child: Text(
                                'Balance',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff000000),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Text(
                              // KhF (1:620)
                              '\$ $sold',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // buttonghost13NM (1:617)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 12 * fem, 0 * fem, 20 * fem),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/payment',
                              arguments: widget.user,
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 114 * fem,
                            height: 45 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0x7fc7c7cc)),
                              borderRadius: BorderRadius.circular(20 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Top Up',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff000000),
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
            ),
            Positioned(
              // image9cZs (5:342)
              left: 1 * fem,
              top: 135 * fem,
              child: Align(
                child: SizedBox(
                  width: 413 * fem,
                  height: 287 * fem,
                  child: Image.asset(
                    'assets/page-1/images/image-9.png',
                    fit: BoxFit.cover,
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
