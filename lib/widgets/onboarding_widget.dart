import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class OnboardingWidget extends StatelessWidget {
  final String firstImage;
  final String secondImage;
  final String firstText;
  final String secondText;
  final VoidCallback onNextPressed;
  final VoidCallback onSkipPressed;
  final String skipText;
  final String nextText;

  const OnboardingWidget({
    Key? key,
    required this.firstImage,
    required this.secondImage,
    required this.firstText,
    required this.secondText,
    required this.onNextPressed,
    required this.onSkipPressed,
    required this.skipText,
    required this.nextText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 414 * fem,
              height: 597 * fem,
              child: Image.asset(
                firstImage,
              ),
            ),
            Container(
              // locateNuT (1:5)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 24 * fem),
              child: Text(
                //text1
                firstText,
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xff010a10),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              // excepteursintoccaePZf (1:6)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 60 * fem),
              constraints: BoxConstraints(
                maxWidth: 284 * fem,
              ),
              child: Text(
                //text2
                secondText,
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 21 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 19 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // skipK5w (1:12)
                    onPressed: () {
                      //skip buttons
                      onSkipPressed();
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      skipText,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xff040104),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupry9fBP3 (VcAM5KccjqZGeaKkz4ry9f)
                    padding: EdgeInsets.fromLTRB(
                        103 * fem, 0 * fem, 0 * fem, 0 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // image14Ud3 (1:2)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 98 * fem, 1 * fem),
                          width: 79 * fem,
                          height: 14 * fem,
                          child: Image.asset(
                            secondImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //next button
                            onNextPressed();
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            nextText,
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
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
    );
  }
}
