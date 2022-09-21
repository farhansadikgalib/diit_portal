import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/CustomWidgets/App_Bar/app_bar.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: Get.height / 14,
                      child: Card(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Date',
                                style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,),
                              ),
                            ),
                            Text('Paid',
                              style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('Type',
                                style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,),
                              ),
                            ),
                          ],
                        ),
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
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              height: Get.height / 13,
                              child: Card(

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(snap[index]['date'],
                                        style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,),
                                      ),
                                    ),
                                    Text(snap[index]['amount'],
                                      style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(snap[index]['method'],
                                        style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,),
                                      ),
                                    ),
                                  ],
                                ),
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
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );

//   Scaffold(
  }
}
