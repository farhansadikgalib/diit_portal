import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Quick_pay/Quickpay_bKash.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:diit_portal/Utility/style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';


enum Intent { sale, authorization }

class bKashPage extends StatefulWidget {
  final String title;

  const bKashPage({Key? key, required this.title}) : super(key: key);

  @override
  _bKashPageState createState() => _bKashPageState();
}

class _bKashPageState extends State<bKashPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _amountController = TextEditingController();

  Intent _intent = Intent.sale;
  FocusNode? focusNode;
  late String formattedDate;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();

    DateTime now = DateTime.now();
    formattedDate = DateFormat.yMd().format(now);
    print(formattedDate);

  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    focusNode!.dispose();
    super.dispose();
  }

  final firestoreInstance = FirebaseFirestore.instance;

  _setPaymentInfo() async{

    var firebaseUser = await FirebaseAuth.instance.currentUser!;
    firestoreInstance.collection("UserData").doc(firebaseUser.uid).collection('Payment_Info').doc().set(
        {
          "amount" : "${_amountController.text.toString()}",
          "date" : "${formattedDate.toString()}",
          "method" : "bKash",

        }).then((_){
      print("payment send on database!");
    });
  }


  CollectionReference ref = FirebaseFirestore.instance
      .collection('user_data')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('Student_Information');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: ref.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      key: _scaffoldKey,
      appBar: AppBar(title: Text(widget.title,style: TextStyle(color: Colors.white70),),centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: ColorChanger.scaffoldcolor,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _amountController,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70),
              decoration: InputDecoration(
                hintText: "Enter your Amount",
                fillColor:  Colors.white70,
                hintStyle: TextStyle(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.w500),
                border: new OutlineInputBorder(

                  borderRadius: const BorderRadius.all(

                    const Radius.circular(8.0),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.white10,
                    width: 2.0,
                  ),
                ),

              ),


            ),
          ),
          CupertinoButton(
              color: Colors.white24,
              child: const Text("Pay Amount",
                style: TextStyle(color: Colors.white70,
                    fontSize: 18
                ),),

            onPressed: () {

                _setPaymentInfo();
                print('success');
                print(formattedDate.toString());
                print(_amountController.text.toString());



              String amount = _amountController.text.trim();
              String intent = _intent == Intent.sale ? "sale" : "Immediate";

              if (amount.isEmpty) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Amount is empty. You can't pay through bkash. Try again")));
                return;
              }
              // remove focus from TextField to hide keyboard
              focusNode!.unfocus();
              // Goto BkashPayment page & pass the params
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BkashPayment(
                    amount: '${_amountController.text}',
                    intent: 'sale',
                    createBKashUrl: 'https://merchantserver.sandbox.bka.sh/api/checkout/v1.2.0-beta/payment/create',
                    executeBKashUrl: 'https://merchantserver.sandbox.bka.sh/api/checkout/v1.2.0-beta/payment/execute',
                    scriptUrl: 'https://scripts.sandbox.bka.sh/versions/1.2.0-beta/checkout/bKash-checkout-sandbox.js',



                    paymentStatus: (status, data) {
                      // when payment success
                      if (status == 'paymentSuccess') {
                        if (data['transactionStatus'] == 'Completed') {
                          Style.basicToast('Payment Success');
                        }
                      }

                      // when payment failed
                      else if (status == 'paymentFailed') {
                        if (data.isEmpty) {
                          Style.errorToast('Payment Failed');
                        } else {
                          Style.errorToast("Payment Failed ${data[0]['errorMessage']}");
                        }
                      }

                      // when payment on error
                      else if (status == 'paymentError') {
                        Style.errorToast(jsonDecode(data['responseText'])['error']);
                      }

                      // when payment close on demand closed the windows
                      else if (status == 'paymentClose') {
                        if (data == 'closedWindow') {
                          Style.errorToast('Failed to payment, closed screen');
                        } else if (data == 'scriptLoadedFailed') {
                          Style.errorToast('Payment screen loading failed');
                        }
                      }
                      // back to screen to pop()
                      Navigator.of(context).pop();
                      print('status => $status');
                      print('data => $data');
                    },
                  )));
            },

             )



        ],
      ),
    );
  } else {
          return Scaffold(
            backgroundColor: ColorChanger.scaffoldcolor,
            body: Center(
              child: Lottie.asset('assets/lotti_file/loading_animation.json',
                  height: 100, width: 100),
            ),
          );
  }
},
);
}

//   Scaffold(
}
