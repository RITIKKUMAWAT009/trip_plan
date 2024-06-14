// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:razorpay_web/razorpay_web.dart';
//
//
// class PaymentScreen extends StatefulWidget {
//   const PaymentScreen({super.key});
//
//   @override
//   State<PaymentScreen> createState() => PaymentScreenState();
// }
//
// class PaymentScreenState extends State<PaymentScreen> {
//   late Razorpay _razorpay;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Razorpay Sample App'),
//         ),
//       ),
//     );
//   }
//   @override
//   void initState() {
//     super.initState();
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _razorpay.clear();
//   }
//
//    openCheckout() async {
//     var options = {
//       'key': 'rzp_test_1DP5mmOlF5G5ag',
//       'amount': 100,
//       'name': 'Acme Corp.',
//       'description': 'Fine T-Shirt',
//       'send_sms_hash': true,
//       'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
//       'external': {
//         'wallets': ['paytm']
//       }
//     };
//
//     try {
//       _razorpay.open(options);
//     } catch (e) {
//       debugPrint('Error: e');
//     }
//   }
//
//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     log('Success Response: $response');
//     Fluttertoast.showToast(
//         msg: "SUCCESS: ${response.paymentId!}",
//         toastLength: Toast.LENGTH_SHORT);
//   }
//
//   void _handlePaymentError(PaymentFailureResponse response) {
//     log('Error Response: $response');
//     Fluttertoast.showToast(
//         msg: "ERROR: ${response.code} - ${response.message!}",
//         toastLength: Toast.LENGTH_SHORT);
//   }
//
//   void _handleExternalWallet(ExternalWalletResponse response) {
//     log('External SDK Response: $response');
//     Fluttertoast.showToast(
//         msg: "EXTERNAL_WALLET: ${response.walletName!}",
//         toastLength: Toast.LENGTH_SHORT);
//   }
// }