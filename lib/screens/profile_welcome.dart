import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:myapp/utils.dart';
import './ride_history.dart';
import 'profile_menu.dart';
import 'package:intl/intl.dart';
import '/providers/weather_api.dart';

class Profile_welcome extends StatefulWidget {
  @override
  State<Profile_welcome> createState() => _Profile_welcomeState();
}

class _Profile_welcomeState extends State<Profile_welcome> {
  //https://rapidapi.com/studio
  String _temperature = '';
  String _condition = '';

  Map<String, dynamic> _weatherData = {};

  Future<void> _fetchData() async {
    try {
      final data = await fetchWeatherData();
      setState(() {
        _weatherData = data;
        _temperature = _weatherData['current']['temp_c']?.toString() ?? "";
        _condition = _weatherData['current']['condition']['text'] ?? "";
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    //Retreive and formate Date
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('d MMMM, EEEE').format(now);

    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      //width: double.infinity,
      body: Container(
        // welcomeQYu (1:1265)
        padding:
            EdgeInsets.fromLTRB(19.5 * fem, 45.5 * fem, 24.5 * fem, 40 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
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
              // autogroupvkq3QxD (NErwPCdVmyEZrFEryZVkq3)
              margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 0 * fem),
              //WAS
              //margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
              width: double.infinity,
              height: 122.5 * fem,
              child: Stack(
                children: [
                  // Positioned(
                  //   // rectangle7Lq (1:1291)
                  //   left: 0 * fem,
                  //   top: 0 * fem,
                  //   child: Align(
                  //     child: SizedBox(
                  //       width: 370 * fem,
                  //       height: 72 * fem,
                  //       child: Image.asset(
                  //         'assets/page-1/images/rectangle-wuF.png',
                  //         width: 370 * fem,
                  //         height: 72 * fem,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    // groupBbb (5:584)
                    left: 9.5 * fem,
                    top: 13.5 * fem,
                    child: Container(
                      width: 89 * fem,
                      height: 89 * fem,
                      // decoration: BoxDecoration(
                      //   image: const DecorationImage(
                      //     fit: BoxFit.cover,
                      //     image: AssetImage(
                      //       'assets/page-1/images/vector.png',
                      //     ),
                      //   ),
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Color(0x19000000),
                      //       offset: Offset(0 * fem, 2 * fem),
                      //       blurRadius: 2.5 * fem,
                      //     ),
                      //   ],
                      // ),
                      child: Center(
                        // vectorDYH (5:586)
                        child: SizedBox(
                          width: 89 * fem,
                          height: 89 * fem,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileMenu()));
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/page-1/images/profile.png',
                              width: 89 * fem,
                              height: 89 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group144hTT (1:1294)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 47 * fem, 40 * fem),
              //here to adjust the container that holds everything
              width: 290 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // helloahmed1U9 (1:1295)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 11 * fem),
                    //constraints: BoxConstraints(maxWidth: 123 * fem,),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 32 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'Hello, \n',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Ahmed',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 40 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // wannatakearidetopiR (1:1296)
                    width: double.infinity,
                    child: Text(
                      'Wanna take a ride today?',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xffffffff),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // weatherreportiYu (1:1276)
              margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 31 * fem),
              padding: EdgeInsets.fromLTRB(0 * fem, 23 * fem, 0 * fem, 0 * fem),
              width: 366 * fem,
              decoration: BoxDecoration(
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24 * fem),
                  topRight: Radius.circular(24 * fem),
                  bottomRight: Radius.circular(30 * fem),
                  bottomLeft: Radius.circular(30 * fem),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28000000),
                    offset: Offset(0 * fem, 12 * fem),
                    blurRadius: 15 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupje7w7b3 (NErwvBjsLg6WZptEPyJE7w)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 10 * fem, 18.95 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // cloudlyQq3 (1:1283)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 24.16 * fem, 0 * fem),
                          width: 125.84 * fem,
                          height: 95.05 * fem,
                          child: Image.asset(
                            'assets/page-1/images/cloudly.png', // nchalh nchofo wash ndirolak
                            width: 125.84 * fem,
                            height: 95.05 * fem,
                          ),
                        ),
                        Container(
                          // autogrouppjavU4D (NErx4rA6rQ5WGmCAQZPjaV)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3.05 * fem),
                          width: 193 *
                              fem, // size of conrainer that holds temp and condition
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupztwvyFs (NErxC6T2YKbttgS3itzTWV)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 15 * fem, 10 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // 5Ju (1:1282)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                      child: Text(
                                        _temperature.isNotEmpty
                                            ? '${_temperature}°C'
                                            : 'unable to retrieve temperature',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 32 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xffffffff),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // cloudlyZUy (1:1281)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                      child: Text(
                                        _condition.isNotEmpty ? _condition : 'unable to retrieve temperature condition',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xffffffff),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 35 * fem, 0 * fem), // 35 , 25 *fem
                                child: Text(
                                  // marbelladr4Rj (1:1280)
                                  'Bab Ezzouar Alger',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xffffffff),
                                    decoration: TextDecoration.none,
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
                    // autogroupd5gyz4V (NErxVLTJHJxCi975pXd5Gy)
                    width: double.infinity,
                    height: 53 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff0049a0),
                      borderRadius: BorderRadius.circular(26.5 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x28000000),
                          offset: Offset(0 * fem, 12 * fem),
                          blurRadius: 15 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        formattedDate,
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xffffffff),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // cardscbf (1:1268)
              margin: EdgeInsets.fromLTRB(89 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: 280 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupprwb8K7 (NErwb2d858bW6sUC4ppRwB)
                    margin: EdgeInsets.fromLTRB(
                        150 * fem, 0 * fem, 0 * fem, 80 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // browsemap3S5 (1:1269)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 11.36 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ridehistory()));
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Ride History',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // iconchevronleftgV3 (1:1273)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.72 * fem, 0 * fem, 12 * fem),
                          width: 8.64 * fem,
                          height: 17.28 * fem,
                          child: const Icon(
                            CupertinoIcons.forward,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // distanceZ33 (1:1270)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 50 * fem, 84 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/map');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 196 * fem,
                        height: 55 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(27.5 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'GO!',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 21 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
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
    );
  }
}
