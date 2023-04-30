import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Settings extends StatefulWidget {
  final Map<String, dynamic> user;
  const Settings({Key key, this.user}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String username = '';
  String first_name = '';
  String last_name = '';
  String matricule = '';
  String email = '';

  String buttonon = 'assets/page-1/images/buttonon.png';
  String buttonoff = 'assets/page-1/images/buttonoff.png';

  @override
  Widget build(BuildContext context) {
    if (widget.user != null) {
      first_name = widget.user['first_name'];
      last_name = widget.user['last_name'];
      matricule = widget.user['matricule'];
      email = widget.user['email'];
      username = widget.user['username'];
    }

    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // settings41j (1:307)
        width: double.infinity,
        height: 896 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerG1K (I1:308;0:1414)
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
                      'Settings',
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
              // inputsHyw (1:309)
              left: 0 * fem,
              top: 167 * fem, // white bar postion more == go down , less==go up

              child: Container(
                padding: EdgeInsets.fromLTRB(
                    32 * fem, 35 * fem, 32 * fem, 283 * fem),
                width: 414 * fem,
                height: 900 *
                    fem, // size of container , fixed over flow of notification
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
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentcopymbb (1:324)
                            'Email address',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 21 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff000000),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Container(
                            // autogroupjtzqgCm (NErcfpeLvGL3EQHr6DJtzq)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 19 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // marbellaZXT (1:325)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    email,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 21 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
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
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentcopymbb (1:324)
                            'Last name',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 21 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff000000),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Container(
                            // autogroupjtzqgCm (NErcfpeLvGL3EQHr6DJtzq)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 19 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // marbellaZXT (1:325)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    last_name,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 21 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
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
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentcopymbb (1:324)
                            'First name',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 21 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff000000),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Container(
                            // autogroupjtzqgCm (NErcfpeLvGL3EQHr6DJtzq)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 19 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // marbellaZXT (1:325)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    first_name,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 21 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
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
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentcopymbb (1:324)
                            'Username',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 21 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff000000),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Container(
                            // autogroupjtzqgCm (NErcfpeLvGL3EQHr6DJtzq)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 19 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // marbellaZXT (1:325)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    username,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 21 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
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
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentcopy21nm (1:319)
                            'Matricule',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 21 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff000000),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Container(
                            // autogrouphs498Mb (NErcQARmZzfhgnaWXvHs49)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 19 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // englishqG1 (1:320)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    matricule,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 21 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff000000),
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
