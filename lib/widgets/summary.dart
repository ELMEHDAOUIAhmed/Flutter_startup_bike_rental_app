import 'package:flutter/material.dart';
import 'package:myapp/components/my_button.dart';
import 'package:myapp/utils.dart';
import '/helpers/globals.dart' as globals;

class Summary extends StatefulWidget {
  //final Map<String, dynamic> stats;
  //const Summary({Key key, this.stats}) : super(key: key);
  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  double newSolde = 0.0;
  double totalPrice = 0.0;
  String elapsedTime;
  
    String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "${hours}h:${minutes}m:${seconds}s";
  }


  @override
  Widget build(BuildContext context) {
    
    // if (widget.stats != null) {
    //   elapsedTime = widget.stats['elapsedTime'];
    //   totalPrice = widget.stats['totalPrice'];
    //   newSolde = widget.stats['newSolde'];
    // }

    if(globals.total_ride_time!=null){
      elapsedTime=formatDuration(globals.total_ride_time);
    }
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Stack(children: [
      Positioned(
        left: 20,
        right: 20,
        bottom: 240 * ffem,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ride summary',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 28 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xfff7f0f0),
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(
                  height: 40.0), // Add some spacing between the text widgets
              Text(
                'Elapsed time:',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xfff7f0f0),
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                '$elapsedTime',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color.fromARGB(255, 255, 255, 255),
                  decoration: TextDecoration.none,
                ),
              ),

              const SizedBox(
                  height: 15.0), // Add some spacing between the text widgets
              Text(
                'Total price:',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xfff7f0f0),
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                '${globals.total_price}',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color.fromARGB(255, 255, 0, 0),
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(
                  height: 15.0), // Add some spacing between the text widgets
              Text(
                'Your new solde:',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color.fromARGB(255, 240, 247, 243),
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                '${globals.new_solde}',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color.fromARGB(255, 20, 247, 12),
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                  width: 150 * fem,
                  height: 45 * fem,
                  child: MyButton(text: 'Continue!', onTap: function)),
            ],
          ),
        ),
      ),
    ]);
  }

  void function() {
    Navigator.pushNamedAndRemoveUntil(context, '/auth', (route) => false);
  }
}
