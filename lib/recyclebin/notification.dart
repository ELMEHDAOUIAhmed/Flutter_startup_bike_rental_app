import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 330;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // notificationgZT (7:391)
        width: double.infinity,
        height: 174*fem,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0x590f0d0d)),
          color: Color(0xe5f7f7f7),
          borderRadius: BorderRadius.circular(8*fem),
        ),
        child: Center(
          child: Text(
            'Found 2 available stations! ',
            textAlign: TextAlign.center,
            style: SafeGoogleFont (
              'Montserrat',
              fontSize: 20*ffem,
              fontWeight: FontWeight.w400,
              height: 1.2175*ffem/fem,
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
          );
  }
}