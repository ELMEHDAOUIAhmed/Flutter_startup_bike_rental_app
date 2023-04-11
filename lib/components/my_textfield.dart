import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/utils.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String labelText;
  final Color backgroundColor;
  final String mode;

  MyTextField({
    Key key,
    @required this.controller,
    @required this.labelText,
    @required this.hintText,
    @required this.obscureText,
    @required this.mode,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      color: Colors.white,
      child: Container(
        width: 350 * fem,
        height: 80 * fem,
        color: backgroundColor,
        child: Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 24 * fem, 14 * fem),
          width: 326 * fem,
          height: 42 * fem,
          child: Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
            width: 264 * fem,
            height: double.infinity,
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              keyboardType:
                  mode == 'number' ? TextInputType.number : TextInputType.text,
              inputFormatters: mode == 'text'
                  ? <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(12),
                    ]
                  : null,
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
              ),
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 21 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2175 * ffem / fem,
                color: Color(0xff030303),
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
