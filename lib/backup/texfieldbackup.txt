import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/utils.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String labelText;
  final Color backgroundColor;
  final String mode;
  final bool showPassword; // added showPassword boolean parameter

  MyTextField({
    Key key,
    @required this.controller,
    @required this.labelText,
    @required this.hintText,
    @required this.obscureText,
    this.mode,
    this.showPassword = false, // default value is false
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

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
        color: widget.backgroundColor,
        child: Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 24 * fem, 14 * fem),
          width: 326 * fem,
          height: 42 * fem,
          child: Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
            width: 264 * fem,
            height: double.infinity,
            child: TextField(
              controller: widget.controller,
              obscureText: _obscureText,
              keyboardType:
                  widget.mode == 'number' ? TextInputType.number : TextInputType.text,
              inputFormatters: widget.mode == 'text'
                  ? <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(12),
                    ]
                  : null,
              decoration: InputDecoration(
                labelText: widget.labelText,
                hintText: widget.hintText,
                suffixIcon: widget.obscureText // added suffixIcon widget
                    ? IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )
                    : null,
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
