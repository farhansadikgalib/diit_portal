import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:multi_charts/multi_charts.dart';

class StudentPortal extends StatefulWidget {
  @override
  State<StudentPortal> createState() => _StudentPortalState();
}

class _StudentPortalState extends State<StudentPortal> {
  String? payable, paid, due, fine;
  double _payable = 0, _paid = 0, _due = 0, _fine = 0;
  double total = 0,
      _payablePersantage = 0,
      _paidPersantage = 0,
      _duePersantage = 0,
      _finePersantage = 0;
  double _dpayable = 49.13, _dpaid = 14.67, _ddue = 34.48, _dfine = 1.72;

  double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  // reference().child('Student').child('batch17').child('170001');
  @override
  void initState() {
    getFirebaseUserData();
  }

  final firestoreInstance = FirebaseFirestore.instance;


  getFirebaseUserData() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser!;
    final snapshot = await FirebaseFirestore.instance
        .collection('UserData')
        .doc(firebaseUser.uid)
        .collection('Student_Information')
        .doc('Portal_Info')
        .get();

    if (snapshot.exists) {
      payable = snapshot['payable'];
      paid = snapshot['paid'];
      due = snapshot['due'];
      fine = snapshot['fine'];

      _payable = double.parse(payable!);
      _paid = double.parse(paid!);
      _due = double.parse(due!);
      _fine = double.parse(fine!);

      //Persantage Calculation
      total = _payable + _paid + _due + _fine;
      _payablePersantage = roundDouble(((_payable / total) * 100), 2);
      _paidPersantage = roundDouble((_paid / total) * 100, 2);
      _duePersantage = roundDouble((_due / total) * 100, 2);
      _finePersantage = roundDouble((_fine / total) * 100, 2);
      //Persantage Calculation

      print(_payablePersantage);
      print(_paidPersantage);

      // print(_due);
    } else {
      _setStudent_Portal_info();
      print('database is not created');
    }
  }

  _setStudent_Portal_info() async {
    var firebaseUser = await FirebaseAuth.instance.currentUser!;
    firestoreInstance
        .collection("UserData")
        .doc(firebaseUser.uid)
        .collection('Student_Information')
        .doc('Portal_Info')
        .set({
      "payable": "",
      "paid": "",
      "due": "",
      "fine": "",
    }).then((_) {
      print("database created!");
    });
  }


  CollectionReference ref = FirebaseFirestore.instance
      .collection('UserData')
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
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: Get.width,
                    child: PieChart(
                      values: [
                        _payablePersantage ?? _dpayable,
                        _paidPersantage ?? _dpaid,
                        _duePersantage ?? _ddue,
                        _finePersantage ?? _dfine
                      ],
                      labels: [
                        "Payable",
                        "Paid",
                        "Due",
                        "Fine",
                      ],
                      legendTextColor: Colors.white,
                      sliceFillColors: [
                        Color(0xffCDC845),
                        Color(0xff81E85E),
                        Color(0xff5DD8D0),
                        Color(0xbc4fa4cd),
                      ],
                      animationDuration: Duration(milliseconds: 2000),
                      legendPosition: LegendPosition.Bottom,
                      legendTextSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset('assets/taka.png')),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      payable ?? '0' + '/-',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white70),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Total Payable',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white70,
                                          fontFamily: 'Poppins'),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed('/TOTALPAID'),
                          child: Container(
                            height: 120,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.asset('assets/taka.png')),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        paid ?? '0' + '/-',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white70),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Total Paid',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white70,
                                            fontFamily: 'Poppins'),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed('/TOTALDUE'),
                          child: Container(
                            height: 120,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.asset('assets/taka.png')),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        due ?? '0' + '/-',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white70),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Total Due',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontFamily: 'Poppins'),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed('/TOTALFINE'),
                          child: Container(
                            height: 120,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.asset('assets/taka.png')),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        fine ?? '0' + '/-',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white70),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Total Fine',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white70,
                                            fontFamily: 'Poppins'),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
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
