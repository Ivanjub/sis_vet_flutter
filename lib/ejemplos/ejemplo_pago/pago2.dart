import 'package:flutter/material.dart';
import 'package:payumoney_pro_unofficial/payumoney_pro_unofficial.dart';


class mipago extends StatefulWidget {
  // Example app to test the payumoney plugin
  @override
  _mipagoState createState() => _mipagoState();
}

class _mipagoState extends State<mipago> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PayUMoney Checkout Pro'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Realizar Pago"),
            onPressed: () async {
              // // Every Transaction should have a unique ID. I am using timestamp as transactionid. Because its always unique :)
              String orderId = DateTime.now().millisecondsSinceEpoch.toString();
              // Amount is in rs. Enter 100 for Rs100.
              final String amount = "1";

              // Phone Number should be 10 digits. Please validate it before passing else it will throw error.
              // hashUrl is required. check github documentation for nodejs code.
              var response = await PayumoneyProUnofficial.payUParams(
                  email: 'test@example.com',
                  firstName: "Orange",
                  merchantName: 'Orange Digitals',
                  isProduction: true,
                  merchantKey:
                      'merchantKey', //You will find these details from payumoney dashboard
                  merchantSalt: 'merchantSalt',
                  amount: amount,
                  productInfo: 'iPhone 12', // Enter Product Name
                  transactionId:
                      orderId, //Every Transaction should have a unique ID
                  hashUrl: '',
                  userCredentials: 'merchantKey:test@example.com',
                  showLogs: true,
                  userPhoneNumber: '9999999999');
              // handling success response
              if (response['status'] == PayUParams.success)
                handlePaymentSuccess(amount);
              // handling failure response
              if (response['status'] == PayUParams.failed)
                handlePaymentFailure(amount, response['message']);
            },
          ),
        ),
      ),
    );
  }

// Function to implement business login on payment success
  handlePaymentSuccess(String amount) {
    print("Success");
    // Implement your logic here for successful payment.
  }

// Function to implement business login on payment failure
  handlePaymentFailure(String amount, String error) {
    print("Failed");
    print(error);
    // Implement your logic here for failed payment.
  }
}