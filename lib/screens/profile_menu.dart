import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import './my_wallet.dart';
import './my_statistics.dart';
// import './invite.dart';
import './support_request.dart';
// import './reputation.dart';
// import './report.dart';
import './settings.dart';
import './starting_page.dart';
import './profile_welcome.dart';
import '/providers/auth_api.dart';
import '/models/db.dart';
import '/providers/user_api.dart';

// future improvements combine every button into one widget and then instead of writing same code over and over
// write once , just like my_button.dart

String username='';

class ProfileMenu extends StatelessWidget {
  void signUserOutAPI() async {
    String token = await getToken();
    logout(token);
    await deleteToken();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // profilemenuKbj (6:585)
          width: double.infinity,
          height: 896 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // profile31w (6:612)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  //padding: EdgeInsets.fromLTRB(137 * fem, 36 * fem, 138 * fem, 72 * fem),

                  padding: EdgeInsets.fromLTRB(
                      50 * fem, 36 * fem, 138 * fem, 50 * fem),

                  width: 500 * fem,
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
                      Divider(),
                      TextButton(
                        // image42DqX (6:661)
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
                          width: 120 * fem,
                          height: 120 * fem,
                          child: Image.asset(
                            'assets/page-1/images/profile.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // lucassimes8Sh (6:615)
                            margin: EdgeInsets.fromLTRB(
                                1 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              //modify after to show username not email
                              username,
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 25 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2190000153 * ffem / fem,
                                color: Color(0xffffffff),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // cardyTK (6:616)
                left: 0 * fem,
                top: 220 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      36 * fem, 28 * fem, 35.25 * fem, 111 * fem),
                  width: 414 * fem,
                  height: 676 * fem,
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
                        // autogroupfhgrzdK (ApA1XmmvRYc89wF8NnFHgR)
                        margin: EdgeInsets.fromLTRB(
                            1.15 * fem, 0 * fem, 1.2 * fem, 23 * fem),
                        width: double.infinity,
                        height: 48 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // inputwhiteshadow16AZ (6:620)
                              left: 0 * fem,
                              top: 1 * fem,
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
                                  width: 340.4 * fem,
                                  height: 47 * fem,
                                  child: Container(
                                    // autogroup6mbbaLd (ApA1iw7zT33bfFur5h6mbb)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 24.4 * fem, 21 * fem),
                                    width: 316 * fem,
                                    height: 26 * fem,
                                    child: Text(
                                      'My Wallet',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 21 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2189999535 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // DeV (6:631)
                              left: 255.1999511719 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83.95 * fem,
                                  height: 26 * fem,
                                  child: Text(
                                    '\$ 10.50',
                                    textAlign: TextAlign.right,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 21 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2189999535 * ffem / fem,
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
                        // inputwhiteshadow1g2H (6:624)
                        margin: EdgeInsets.fromLTRB(
                            1.15 * fem, 0 * fem, 1.2 * fem, 23 * fem),
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
                            width: double.infinity,
                            height: 47 * fem,
                            child: Container(
                              // autogroupvvahLsX (ApA3k3RXSE3Psiya4iVvaH)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.4 * fem, 21 * fem),
                              width: 316 * fem,
                              height: 26 * fem,
                              child: Text(
                                'My Statistics',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2189999535 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // inputwhiteshadow1oFK (6:621)
                        margin: EdgeInsets.fromLTRB(
                            1.15 * fem, 0 * fem, 1.2 * fem, 23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 47 * fem,
                            child: Container(
                              // autogroupmvoft1s (ApA364Wp2yW7KTvo6bmvoF)
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
                                  height: 1.2189999535 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // inputwhiteshadow1jYH (6:622)
                        margin: EdgeInsets.fromLTRB(
                            1.15 * fem, 0 * fem, 1.2 * fem, 23 * fem),
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
                            width: double.infinity,
                            height: 47 * fem,
                            child: Container(
                              // autogrouppp7woHF (ApA3GtY6vdUrT8pD7LPp7w)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.4 * fem, 21 * fem),
                              width: 316 * fem,
                              height: 26 * fem,
                              child: Text(
                                'Support',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2189999535 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // inputwhiteshadow1Tch (6:623)
                        margin: EdgeInsets.fromLTRB(
                            1.15 * fem, 0 * fem, 1.2 * fem, 23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 47 * fem,
                            child: Container(
                              // autogroup1hsd9VX (ApA3TiZPpHTbaohd851hSd)
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
                                  height: 1.2189999535 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // inputwhiteshadow2RC9 (6:619)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 2.35 * fem, 23 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 340.4 * fem,
                            height: 47 * fem,
                            child: Container(
                              // autogroupj8cvuND (ApA2kuQ4mS16rWWkmTJ8cV)
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
                                  height: 1.2189999535 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // inputwhiteshadow3P2V (6:618)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 1 * fem),
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
                            width: double.infinity,
                            height: 47 * fem,
                            child: Container(
                              // autogroupeesrfEu (ApA2aACyAEe3KFaAgGEeSR)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.4 * fem, 21 * fem),
                              width: 316 * fem,
                              height: 26 * fem,
                              child: Text(
                                'Settings',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 21 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2189999535 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupdsxdXnu (ApA1vLxeKuL7wpR3ZEdSxd)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 5 * fem, 0 * fem, 0 * fem),
                        width: 340.4 * fem,
                        height: 48 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // inputwhiteshadow42zZ (6:653)
                              left: 0 * fem,
                              top: 1 * fem,
                              child: // use on tap maybe it will fix it
                                  TextButton(
                                onPressed: () {
                                  signUserOutAPI();
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/auth', (route) => false);
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 340.4 * fem,
                                  height: 47 * fem,
                                  child: Container(
                                    // autogroupjwxvw5w (ApA28fwSKpP9kvKLBmJWxV)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 24.4 * fem, 20 * fem),
                                    padding: EdgeInsets.fromLTRB(50 * fem,
                                        1 * fem, 148.35 * fem, 0 * fem),
                                    // padding to put it in right side
                                    width: 316 * fem,
                                    height: 27 * fem,
                                    child: Text(
                                      'Log Out',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 21 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2189999535 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // iconlogoutyoK (6:626)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 32.2 * fem,
                                  height: 28 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/icon-log-out.png',
                                    width: 32.2 * fem,
                                    height: 28 * fem,
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
            ],
          ),
        ),
      ),
    );
  }
}
