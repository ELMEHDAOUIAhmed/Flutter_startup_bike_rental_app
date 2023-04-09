import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';




class Unlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Positioned(
      left: 0,
      right: 0,
      bottom: 240 * ffem,
      child: SizedBox(
        child: Container(
          width: double.infinity,
          height: 400 * fem,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48 * fem),
            gradient: const LinearGradient(
              begin: Alignment(0.217, 1),
              end: Alignment(0.2, -1),
              colors: <Color>[Color(0xff009efd), Color(0xff000000)],
              stops: <double>[0, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x33000000),
                offset: Offset(0 * fem, 2 * fem),
                blurRadius: 16 * fem,
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                // haibikesdurofullse7SV (7:377)
                left: 64 * fem,
                top: 35 * fem,
                child: Align(
                  child: SizedBox(
                    width: 252 * fem,
                    height: 103 * fem,
                    child: Text(
                      'Put your Student\n Id Card\nclose to the lock',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xfff7f0f0),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // image32wAd (7:379)
                left: 10 * fem,
                top: 120 * fem,
                child: Align(
                  child: SizedBox(
                    width: 250 * fem,
                    height: 250 * fem,
                    child: Image.asset(
                      'assets/page-1/images/student_id.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // image33dJM (7:387)
                left: 240 * fem,
                top: 20 * fem,
                child: Align(
                  child: SizedBox(
                    width: 89 * fem,
                    height: 124 * fem,
                    child: Image.asset(
                      'assets/page-1/images/nfc_unlocked.png',
                      //'assets/page-1/images/nfc_locked.png',
                      fit: BoxFit.cover,
                    ),
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
