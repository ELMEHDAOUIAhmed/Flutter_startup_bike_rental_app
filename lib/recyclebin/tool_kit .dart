import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iconsuQh (7:179)
        padding: EdgeInsets.fromLTRB(55*fem, 31*fem, 49*fem, 50.02*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only (
            topLeft: Radius.circular(48*fem),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x28000000),
              offset: Offset(0*fem, 12*fem),
              blurRadius: 15*fem,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // image27wMP (7:181)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95*fem, 17.98*fem),
              width: 38*fem,
              height: 38*fem,
              child: Image.asset(
                'assets/page-1/images/location_not_selected.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // image25qSm (7:182)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 89*fem, 20.52*fem),
              width: 38*fem,
              height: 41.45*fem,
              child: Image.asset(
                'assets/page-1/images/unlock_not_selected.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // image30vz1 (7:248)
              width: 50*fem,
              height: 61.98*fem,
              child: Image.asset(
                'assets/page-1/images/toolkit_selected.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
          );
  }
}