import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/components/my_textfield.dart';
import 'package:myapp/components/my_button.dart';
import '../providers/payment_api.dart';
import '/models/db.dart';

class PaymentVoucher extends StatefulWidget {
  @override
  State<PaymentVoucher> createState() => _PaymentVoucherState();
}

class _PaymentVoucherState extends State<PaymentVoucher> {


// variables to hold user input
  final voucherController = TextEditingController();

  void refillsolde() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    String token = await getToken();
    String voucher = voucherController.text;
    try {
      final solde = await refillSold(token, voucher);
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            title: Row(
              children: [
                //Icon(Icons.error, color: Colors.red),
                const Icon(Icons.check_box, color: Colors.green),
                const SizedBox(width: 8.0),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text('Success! \n Your new solde :$solde',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
            // Other properties
          );
        },
      );
    } catch (error) {
      // Display an error message
      // ignore: use_build_context_synchronously
      showDialog(
        //you need a statefull widget to show dialog
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            title: Row(
              children: const [
                Icon(Icons.error, color: Colors.red),
                SizedBox(width: 8.0),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text('Error! \nInvalid or User Voucher',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
            // Other properties
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // paymentuTK (1:555)
            width: double.infinity,
            height: 896 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // headero2u (I1:556;0:1422)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        32 * fem, 59 * fem, 156.5 * fem, 59 * fem),
                    width: 550 * fem,
                    height: 255 * fem,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.217, 1),
                        end: Alignment(0.2, -1),
                        colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // supportrequestyk1 (I1:556;0:1424)
                          margin: EdgeInsets.fromLTRB(
                              115 * fem, 0 * fem, 0 * fem, 111 * fem),
                          child: Text(
                            'USTHB Pay',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 21 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xffffffff),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // rectangleRru (1:557)
                  left: 0 * fem,
                  top: 172 * fem,
                  child: SizedBox(
                    width: 414 * fem,
                    height: 724 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(48 * fem),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // image73x9 (5:331)
                  left: 0 * fem,
                  top: 100 * fem,
                  right: 0 * fem,
                  child: Container(
                    height: 520.0,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.asset(
                        'assets/page-1/images/payment_code.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // jKB (5:343)
                  left: 43 * fem,
                  top: 474 * fem,
                  child: MyTextField(
                    controller: voucherController,
                    labelText: 'Voucher',
                    hintText: 'Enter your Voucher code here!',
                    obscureText: false,
                  ),
                ),
                Positioned(
                  // jKB (5:343)
                  left: 27 * fem,
                  top: 674 * fem,
                  child: MyButton(
                    onTap: refillsolde,
                    text: 'Submit',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
