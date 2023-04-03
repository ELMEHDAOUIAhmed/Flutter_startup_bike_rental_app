import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Promotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // promotionF5o (1:1519)
        width: double.infinity,
        height: 896*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // header9BB (I1:1520;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 64*fem, 32*fem, 64*fem),
                width: 414*fem,
                height: 255*fem,
                decoration: const BoxDecoration (
                  gradient: LinearGradient (
                    begin: Alignment(0.152, -1),
                    end: Alignment(0.853, 0.885),
                    colors: <Color>[Color(0x7fff5b00), Color(0x7ffce08e)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Align(
                  // iconchevronleftkgm (I1:1520;0:1425)
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 18.13*fem,
                    height: 17.28*fem,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 331.87*fem, 109.72*fem),
                      child: Image.asset(
                        'assets/page-1/images/icon-chevron-left-CLD.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // suggestionCof (1:1521)
              left: 0*fem,
              top: 177*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(34*fem, 336*fem, 28*fem, 31*fem),
                width: 414*fem,
                height: 724*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(48*fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // titleRwK (1:1523)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 36*fem),
                      width: double.infinity,
                      child: Text(
                        'Get 50% DISCOUNT',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 21*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: Color(0xff000000),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      // pageindicatorsJkD (1:1530)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 35.67*fem),
                      width: 31*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupntkm18q (NEs3yLz5jKrY2QBkVxNtkm)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41.33*fem),
                            width: double.infinity,
                            height: 31*fem,
                            decoration: const BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/oval-82y.png',
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupepbj3jj (NEs49g2CvE9BbbQCyRePBj)
                            width: double.infinity,
                            height: 31*fem,
                            decoration: const BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/oval-wyP.png',
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // buttonwhite1ToT (1:1526)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 16*fem),
                      padding: EdgeInsets.fromLTRB(143*fem, 23*fem, 22*fem, 20*fem),
                      width: double.infinity,
                      height: 70*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffc7c7cc),
                        borderRadius: BorderRadius.circular(35*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupbarztNy (NEs3Vwc5NMSwpaBumwbarZ)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 78*fem, 0*fem),
                            width: 61*fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // titleicu (1:1528)
                                  left: 0*fem,
                                  top: 1*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 57*fem,
                                      height: 26*fem,
                                      child: Text(
                                        'xxxxx',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 21*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff000000),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //duplicte code remove after
                                // Positioned(
                                //   // title5Ly (1:1529)
                                //   left: 0*fem,
                                //   top: 1*fem,
                                //   child: Align(
                                //     child: SizedBox(
                                //       width: 57*fem,
                                //       height: 26*fem,
                                //       child: Text(
                                //         'xxxxx',
                                //         textAlign: TextAlign.center,
                                //         style: SafeGoogleFont (
                                //           'Montserrat',
                                //           fontSize: 21*ffem,
                                //           fontWeight: FontWeight.w400,
                                //           height: 1.2175*ffem/fem,
                                //           color: Color(0xff000000),
                                //           decoration: TextDecoration.none,
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Container(
                            // titleuqo (1:1527)
                            margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 0*fem),
                            child: Text(
                              'Copy',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupzpxbCK7 (NEs3Ahf8pMLFmCq3XFZPXB)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                      width: 350*fem,
                      height: 70*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // titleHLZ (1:1524)
                            left: 89*fem,
                            top: 13*fem,
                            child: Align(
                              child: SizedBox(
                                width: 165*fem,
                                height: 44*fem,
                                child: Text(
                                  'Send promo code\nComing Soon',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff000000),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // buttonwhite1kE9 (1:1525)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 350*fem,
                              height: 70*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(35*fem),
                                gradient: const LinearGradient (
                                  begin: Alignment(0.152, -1),
                                  end: Alignment(0.853, 0.885),
                                  colors: <Color>[Color(0x7fff5b00), Color(0x7ffce08e)],
                                  stops: <double>[0, 1],
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
            Positioned(
              // suggestionZxH (1:1535)
              left: 0*fem,
              top: 151*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(34*fem, 336*fem, 26*fem, 56*fem),
                width: 414*fem,
                height: 724*fem,
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
                      // titlezXo (1:1537)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 143*fem, 20*fem),
                      child: Text(
                        'Get 50% DISCOUNT',
                        textAlign: TextAlign.center,
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
                      // autogroupe8hjtNH (NEs4ZpzdDJZ9fKXphDe8Hj)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 19*fem),
                      width: double.infinity,
                      height: 118*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // pageindicatorszAR (1:1543)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 10*fem, 0*fem),
                            width: 31*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroup9wp5VN5 (NEs4ujb82ybJTzTJLG9Wp5)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41.33*fem),
                                  width: double.infinity,
                                  height: 31*fem,
                                  decoration: const BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/oval-gdB.png',
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xffffffff),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogrouporn9DBb (NEs51eawBZGmbJZxstorN9)
                                  width: double.infinity,
                                  height: 31*fem,
                                  decoration: const BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/oval-6nR.png',
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xffffffff),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupbebfxYV (NEs4iQafSZvTmqtvnGBEbf)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // shareinvitewithafriendyourfrie (1:1550)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                                  constraints: BoxConstraints (
                                    maxWidth: 311*fem,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Share invite with a friend\n',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        const TextSpan(
                                          text: 'Your friend will get 10% discound on their first ride',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // get50offwhereyourfriendcomplet (1:1548)
                                  constraints: BoxConstraints (
                                    maxWidth: 298*fem,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Get 50% off\n',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        const TextSpan(
                                          text: 'Where your friend completes their first ride, you’ll get a 50% discount on your next ride',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // buttonwhite1gHT (1:1540)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 2*fem, 9*fem),
                      padding: EdgeInsets.fromLTRB(141*fem, 19*fem, 33.5*fem, 21*fem),
                      width: double.infinity,
                      height: 70*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffc7c7cc),
                        borderRadius: BorderRadius.circular(35*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouprmcrK5X (NEs5W8mUEVgEWVrYbyrMCR)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.5*fem, 0*fem),
                            width: 63*fem,
                            height: double.infinity,
                            child: Text(
                              'xxxxx',
                              textAlign: TextAlign.center,
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
                            // title9qF (1:1541)
                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                            child: Text(
                              'Copy',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupoiv9FNV (NEs5Dj59L6UkdAdmjnoiv9)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 2*fem, 0*fem),
                      width: double.infinity,
                      height: 70*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // titlexGu (1:1538)
                            left: 88*fem,
                            top: 17*fem,
                            child: Align(
                              child: SizedBox(
                                width: 167*fem,
                                height: 44*fem,
                                child: Text(
                                  'Send promo code\nComing Soon',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // buttonwhite1Qeh (1:1539)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 350*fem,
                              height: 70*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(35*fem),
                                gradient: const LinearGradient (
                                  begin: Alignment(0.152, -1),
                                  end: Alignment(0.853, 0.885),
                                  colors: <Color>[Color(0x7fff5b00), Color(0x7ffce08e)],
                                  stops: <double>[0, 1],
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
            Positioned(
              // backgroundnotremoved2e3F (1:1549)
              left: 0*fem,
              top: 59*fem,
              child: Align(
                child: SizedBox(
                  width: 418*fem,
                  height: 454*fem,
                  child: Image.asset(
                    'assets/page-1/images/backgroundnotremoved-2.png',
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