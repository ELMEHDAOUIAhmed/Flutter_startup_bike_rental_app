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
        // iconsfid (7:172)
        padding: EdgeInsets.fromLTRB(55*fem, 24*fem, 55*fem, 24*fem),
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
              // image27gtd (7:174)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37*fem),
              width: 38*fem,
              height: 38*fem,
              child: Image.asset(
                'assets/page-1/images/location_not_selected.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 89*fem,
            ),
            Container(
              // image29ZxR (7:178)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37.71*fem),
              width: 50*fem,
              height: 57.29*fem,
              child: Image.asset(
                'assets/page-1/images/lock_selected.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 89*fem,
            ),
            Container(
              // image26FaM (7:176)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37*fem),
              width: 38*fem,
              height: 38*fem,
              child: Image.asset(
                'assets/page-1/images/toolkit_not_slected.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
          );
  }
}