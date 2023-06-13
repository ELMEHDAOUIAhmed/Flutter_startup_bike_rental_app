import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Payment extends StatefulWidget {
  final Map<String, dynamic>? user;
  const Payment({Key? key, this.user}) : super(key: key);
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  double? sold = 0.0;
  @override
  Widget build(BuildContext context) {
    if (widget.user != null) {
      sold = widget.user!['sold'];
    }
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // paymentuTK (1:555)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headero2u (I1:556;0:1422)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    32 * fem, 59 * fem, 156.5 * fem, 59 * fem),
                width: 414 * fem,
                height: 255 * fem,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
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
                      // iconchevronleftFSD (I1:489;0:1417)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 65.37 * fem, 124 * fem),
                      width: 18.13 * fem,
                      height: 17.28 * fem,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/wallet',
                          );
                        },
                        child: const Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      // supportrequestyk1 (I1:556;0:1424)
                      margin: EdgeInsets.fromLTRB(
                          45 * fem, 0 * fem, 0 * fem, 111 * fem),
                      child: Text(
                        'Payment',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangleRru (1:557)
              left: 0 * fem,
              top: 172 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 724 * fem,
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
              // paymente1T (1:613)
              left: 32 * fem,
              top: 360 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 23 * fem, 0 * fem, 0 * fem),
                  width: 350 * fem,
                  height: 70 * fem,
                  child: TextButton(
                    // payment button
                    onPressed: () {
                      //pushName VOUCHER
                      Navigator.pushNamed(
                        context,
                        '/voucher',
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Container(
                        // autogroupwqb7221 (NErhNGei9GhxzqJYo1WQB7)
                        width: 346 * fem,
                        height: 26 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // contentKG1 (I1:614;0:1316)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 220 * fem, 0 * fem),
                              child: Text(
                                'USTHB Pay',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // pathoBB (1:615)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 20 * fem),
                              width: 6 * fem,
                              height: 12 * fem,
                              child: const Icon(
                                CupertinoIcons.forward,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // image73x9 (5:331)
              left: 0 * fem,
              top: 99 * fem,
              child: Align(
                child: SizedBox(
                  width: 424 * fem,
                  height: 292 * fem,
                  child: Image.asset(
                    'assets/page-1/images/image-7.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // jKB (5:343)
              left: 57 * fem, //57
              top: 286 * fem, //286
              child: Align(
                child: SizedBox(
                  width: 350 * fem, //34
                  height: 35 * fem, //35
                  child: Text(
                    '\$ sold',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 28 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
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
