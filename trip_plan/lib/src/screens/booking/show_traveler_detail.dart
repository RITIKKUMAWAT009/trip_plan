import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:paystack_manager_package/paystack_pay_manager.dart';
import 'package:razorpay_web/razorpay_web.dart';
import 'package:trip_plan/src/screens/payment/payment_screen.dart';

class ShowTravelerDetails extends StatefulWidget {
  const ShowTravelerDetails({super.key});

  @override
  State<ShowTravelerDetails> createState() => _ShowTravelerDetailsState();
}

class _ShowTravelerDetailsState extends State<ShowTravelerDetails> {
  late Razorpay _razorpay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Traveler Details',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              "Tell us who'll be handling check-in.",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              contentPadding: EdgeInsets.zero,
              subtitle: const Text('Phone'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
              leading: Checkbox(
                value: true,
                activeColor: Colors.blue.shade800,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Phone'),
              contentPadding: EdgeInsets.zero,
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
              leading: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              contentPadding: EdgeInsets.zero,
              subtitle: const Text('Phone'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
              leading: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Add new traveler',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black),
                ))
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width - 35,
        height: 50,
        child: ElevatedButton(
          onPressed: ()  {
            // builPaymentScreen(context);
            // PaymentScreen
            openCheckout();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade800,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text('Continue'),
        ),
      ),
    );
  }

//
@override
void initState() {
  super.initState();
  _razorpay = Razorpay();
  _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
}

@override
void dispose() {
  super.dispose();
  _razorpay.clear();
}

openCheckout() async {
  var options = {
    'key': 'rzp_test_1DP5mmOlF5G5ag',
    'amount': 1000,
    'name': 'Acme Corp.',
    'description': 'Fine T-Shirt',
    'send_sms_hash': true,
    'prefill': {'contact': '1234567897', 'email': 'test@yfhfyjfht.com'},
    'external': {
      'wallets': ['paytm']
    }
  };

  try {
    _razorpay.open(options);
  } catch (e) {
    debugPrint('Error: e');
  }
}

void _handlePaymentSuccess(PaymentSuccessResponse response) {
  log('Success Response: $response');
  Fluttertoast.showToast(
      msg: "SUCCESS: ${response.paymentId!}",
      toastLength: Toast.LENGTH_SHORT);
}

void _handlePaymentError(PaymentFailureResponse response) {
  log('Error Response: $response');
  Fluttertoast.showToast(
      msg: "ERROR: ${response.code} - ${response.message!}",
      toastLength: Toast.LENGTH_SHORT);
}

void _handleExternalWallet(ExternalWalletResponse response) {
  log('External SDK Response: $response');
  Fluttertoast.showToast(
      msg: "EXTERNAL_WALLET: ${response.walletName!}",
      toastLength: Toast.LENGTH_SHORT);
}
}
