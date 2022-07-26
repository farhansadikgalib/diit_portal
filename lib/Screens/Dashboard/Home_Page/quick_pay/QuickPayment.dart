import 'package:diit_portal/Screens/App_Colors/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class QuickPayment extends StatefulWidget {
  const QuickPayment({Key? key}) : super(key: key);

  @override
  _QuickPaymentState createState() => _QuickPaymentState();
}

class _QuickPaymentState extends State<QuickPayment> {
  late var _razorpay;
  var amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Payment Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      appBar: const CupertinoNavigationBar(
        middle: Text("Quick Pay"),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: amountController,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                        hintText: "Enter your Amount",
                       fillColor:  Colors.white,
                       hintStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),
                  border: new OutlineInputBorder(

                    borderRadius: const BorderRadius.all(

                      const Radius.circular(8.0),
                    ),
                    borderSide: new BorderSide(
                      color: Colors.orange,
                      width: 2.0,
                    ),
                  ),

                    ),


              ),
            ),
            CupertinoButton(
                color: Colors.white,
                child: const Text("Pay Amount",
                  style: TextStyle(color: Colors.black,
                  fontSize: 18
                  ),),
                onPressed: () {
                  ///Make payment
                  var options = {
                    'key': "rzp_test_xvlZZBGCo0SzL0",
                    // amount will be multiple of 100
                    'amount': (int.parse(amountController.text) * 100)
                        .toString(), //So its pay 500
                    'name': 'Quick PAY',
                    'description': 'Demo',
                    'timeout': 300, // in seconds
                    'prefill': {
                      'contact': '+8801773076754',
                      'email': 'farhan@gmail.com'
                    }
                  };
                  _razorpay.open(options);
                })
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _razorpay.clear();
    super.dispose();
  }
}
