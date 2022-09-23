import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/CustomWidgets/App_Bar/app_bar.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class TOTALPAID extends StatefulWidget {
  @override
  State<TOTALPAID> createState() => _TOTALPAIDState();
}





CollectionReference ref = FirebaseFirestore.instance
    .collection('UserData')
    .doc(FirebaseAuth.instance.currentUser!.uid)
    .collection('Payment_Info');

// CollectionReference ref = FirebaseFirestore.instance.collection('UserData');

class _TOTALPAIDState extends State<TOTALPAID> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: ref.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.docs.length == 0) {
            return Scaffold(
              backgroundColor: const Color.fromRGBO(1, 60, 88, 1),
              body: Center(
                child: Text(
                  "There is no record!",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          }
          return Scaffold(
              backgroundColor: ColorChanger.scaffoldcolor,
              appBar: AppBar(title: Text('Paid Information',
                style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,),
              ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: ColorChanger.scaffoldcolor,
              ),
              body: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Card(
               color: Colors.lightBlueAccent,
                      child: Table(
                        defaultColumnWidth: FixedColumnWidth(200.0),
                        border: TableBorder.all(
                            color: Colors.orangeAccent,
                            style: BorderStyle.solid,
                            width: 2),
                        columnWidths: {
                          0:FractionColumnWidth(0.34),
                          1:FractionColumnWidth(0.34),
                          2:FractionColumnWidth(0.32),
                        },

                        children: [

                          TableRow(
                              decoration: BoxDecoration(color: Colors.deepPurpleAccent.shade400),
                              children: [
                                Column(children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 8, left: 8, right: 8, bottom: 5),
                                    child: Text(
                                      'Date',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Padding(
                                    padding:  EdgeInsets.only(
                                        top: 8, left: 7, right: 8, bottom: 8),
                                    child: Text(
                                      'Paid',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Padding(
                                    padding:  EdgeInsets.only(
                                        top: 8, left: 7, right: 8, bottom: 8),
                                    child: Text(
                                     'Method',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                              ]),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2,),
                  Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (BuildContext context, index) {
                          final snap = snapshot.data!.docs;

                          return Padding(
                            padding: const EdgeInsets.only(top:5,left: 10, right: 10),
                            child: Card(

                              child:Table(
                                defaultColumnWidth: FixedColumnWidth(180.0),
                                border: TableBorder.all(
                                    color: Colors.orangeAccent,
                                    style: BorderStyle.solid,
                                    width: 2),
                                columnWidths: {
                                  0:FractionColumnWidth(0.25),
                                  1:FractionColumnWidth(0.30),
                                  2:FractionColumnWidth(0.25),
                                },

                                children: [

                                    TableRow(
                                        decoration: BoxDecoration(color: Colors.teal.shade400),
                                        children: [
                                          Column(children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 8, left: 8, right: 8, bottom: 5),
                                              child: Text(
                                                snap[index]['date'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ]),
                                          Column(children: [
                                            Padding(
                                              padding:  EdgeInsets.only(
                                                  top: 8, left: 7, right: 8, bottom: 8),
                                              child: Text(
                                                snap[index]['amount'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ]),
                                          Column(children: [
                                            Padding(
                                              padding:  EdgeInsets.only(
                                                  top: 8, left: 7, right: 8, bottom: 8),
                                              child: Text(
                                                snap[index]['method'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ]),
                                        ]),

                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),

                ],
              )
          );
        } else {
          return Scaffold(
            body: Center(
              child: Lottie.asset('assets/lotti_file/loading_animation.json',height:100,width: 100),
            ),
          );
        }
      },
    );

//   Scaffold(
  }
}
