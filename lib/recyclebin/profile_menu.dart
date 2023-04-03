import 'package:flutter/material.dart';
// import 'package:myapp/screens/onboarding.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import '/screens/my_wallet.dart';
import '/screens//my_statistics.dart';
// import './invite.dart';
import '/screens//support_request.dart';
// import './reputation.dart';
// import './report.dart';
import '/screens//settings.dart';
import '/screens//starting_page.dart';
import '/screens//profile_welcome.dart';

class Profile_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // profilemenu1t9 (1:659)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // backscreenWpu (1:660)
              left: 0 * fem,
              top: 32 * fem,
              child: Container(
                width: 414 * fem,
                height: 864 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupy8kpQ9b (NErj7DkW5SML7CyygUY8KP)
                      padding: EdgeInsets.fromLTRB(
                          32 * fem, 0 * fem, 32 * fem, 164 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalHUH (1:687)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 286 * fem, 20 * fem),
                            width: 64 * fem,
                            height: 64 * fem,
                            child: Image.asset(
                              'assets/page-1/images/oval.png',
                              width: 64 * fem,
                              height: 64 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupud41z3F (NEriejWdqWiFRvPE7SuD41)
                      padding: EdgeInsets.fromLTRB(
                          45 * fem, 52 * fem, 55.99 * fem, 31 * fem),
                      width: double.infinity,
                      height: 143 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(48 * fem),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33000000),
                            offset: Offset(0 * fem, 2 * fem),
                            blurRadius: 16 * fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupw6tvPr5 (NEripjDytaYAdTpNtjw6tV)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 102 * fem, 0 * fem),
                            width: 48 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectanglecopyPjb (1:686)
                                  width: double.infinity,
                                  height: 6 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(3 * fem),
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.217, 1),
                                      end: Alignment(0.2, -1),
                                      colors: <Color>[
                                        Color(0xff009efd),
                                        Color(0xff000000)
                                      ],
                                      stops: <double>[0, 1],
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
            Positioned(
              // rectangleAXP (1:688)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 896 * fem,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xaf000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // profile2Jh (1:689)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    157 * fem, 66 * fem, 156 * fem, 89 * fem),
                width: 414 * fem,
                height: 277 * fem,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.217, 1),
                    end: Alignment(0.2, -1),
                    colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // profileDPB (1:691)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 16 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile_welcome()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 80 * fem,
                          height: 80 * fem,
                          child: Image.asset(
                            'assets/page-1/images/profile.png',
                            width: 80 * fem,
                            height: 80 * fem,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      // lucassimesrS9 (1:692)
                      'John Doe',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 21 * ffem,
                        fontWeight: FontWeight.w400,
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
              // card8Pf (1:693)
              left: 0 * fem,
              top: 233 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    35.65 * fem, 32 * fem, 35.07 * fem, 88 * fem),
                width: 414 * fem,
                height: 663 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48 * fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupofmfXwb (NErjrwze4MLibxFmM8ofMF)
                      margin: EdgeInsets.fromLTRB(
                          1.15 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: 342.13 * fem,
                      height: 70 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // inputwhiteshadow1ELD (1:697)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Mywallet()));
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 23 * fem, 0 * fem, 21 * fem),
                                width: 340.4 * fem,
                                height: 70 * fem,
                                child: Container(
                                  // autogroupmwzfHZP (NErk4H16em1ZJ6p8u8mwZf)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 24.4 * fem, 0 * fem),
                                  width: 316 * fem,
                                  height: double.infinity,
                                  child: Text(
                                    'My Wallet',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 21 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // 8pu (1:708)
                            left: 269.125 * fem,
                            top: 22 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 73 * fem,
                                height: 26 * fem,
                                child: Text(
                                  '\$ 10.50',
                                  textAlign: TextAlign.right,
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 21 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff000000),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // inputwhiteshadow1zMK (1:701)
                      margin: EdgeInsets.fromLTRB(
                          1.15 * fem, 0 * fem, 1.73 * fem, 23 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mystatistics()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 23 * fem, 0 * fem, 21 * fem),
                          width: double.infinity,
                          height: 70 * fem,
                          child: Container(
                            // autogroupiafpqcq (NErmeZgf5CfvhYBdn1iAFP)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24.4 * fem, 0 * fem),
                            width: 316 * fem,
                            height: double.infinity,
                            child: Text(
                              'My Statistics',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // inputwhiteshadow1HDw (1:698)
                      margin: EdgeInsets.fromLTRB(
                          1.15 * fem, 0 * fem, 1.73 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 47 * fem,
                          child: Container(
                            // autogroupiybpLi1 (NErm2LE2db3ybwzDCKiYbP)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24.4 * fem, 21 * fem),
                            width: 316 * fem,
                            height: 26 * fem,
                            child: Text(
                              'Invite Friends',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // inputwhiteshadow1na1 (1:699)
                      margin: EdgeInsets.fromLTRB(
                          1.15 * fem, 0 * fem, 1.73 * fem, 23 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Support()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 23 * fem, 0 * fem, 21 * fem),
                          width: double.infinity,
                          height: 70 * fem,
                          child: Container(
                            // autogroupupyuqYH (NErmE5PTeHoEGAGiN3UpYu)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24.4 * fem, 0 * fem),
                            width: 316 * fem,
                            height: double.infinity,
                            child: Text(
                              'Support',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // inputwhiteshadow17Vo (1:700)
                      margin: EdgeInsets.fromLTRB(
                          1.15 * fem, 0 * fem, 1.73 * fem, 23 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 47 * fem,
                          child: Container(
                            // autogroupzu4zaeH (NErmRa4JochS98ijm8Zu4Z)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24.4 * fem, 21 * fem),
                            width: 316 * fem,
                            height: 26 * fem,
                            child: Text(
                              'Reputation',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // inputwhiteshadow2FVX (1:696)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 2.88 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 340.4 * fem,
                          height: 47 * fem,
                          child: Container(
                            // autogrouprakwL1B (NErkg1UZPcwQqDLbwZRAKw)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24.4 * fem, 21 * fem),
                            width: 316 * fem,
                            height: 26 * fem,
                            child: Text(
                              'Report',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // inputwhiteshadow3zbX (1:695)
                      margin: EdgeInsets.fromLTRB(
                          1.15 * fem, 0 * fem, 1.73 * fem, 25 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Settings()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 23 * fem, 0 * fem, 21 * fem),
                          width: double.infinity,
                          height: 70 * fem,
                          child: Container(
                            // autogroup4ttdqMF (NErkTS1BYL3LEsbqYQ4ttD)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 24.4 * fem, 0 * fem),
                            width: 316 * fem,
                            height: double.infinity,
                            child: Text(
                              'Settings',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupaehs5mP (NErkEmhcQaXa47vFDhAEHs)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 202.07 * fem, 0 * fem),

                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            // logoutcPw (1:702)
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StartingPage()));
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.logout,
                                  size: 37.0,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Log Out',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 21 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff000000),
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
