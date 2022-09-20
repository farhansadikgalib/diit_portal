


import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:get/get.dart';

class StudentAttennameList extends StatefulWidget {
  @override
  State<StudentAttennameList> createState() => _StudentAttennameListState();
}

class _StudentAttennameListState extends State<StudentAttennameList> {






  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    UserData();

  }

  ///firebase

  String user_department = '';
  String user_batch = '';
  String user_section = '';


  // CollectionReference ref = FirebaseFirestore.instance
  //     .collection('UserData')
  //     .doc(FirebaseAuth.instance.currentUser!.uid).parent;

  CollectionReference ref = FirebaseFirestore.instance.collection('UserData');

  /// firebase

  // final int _Value = 0;
  // bool radioSelected1 = false;

  UserData(){
     student({
       'id':'class_id'
     });
     attendance ['class_id'] ='';
   }


  Map<String, String> attendance = {};

  List<String> labels = ['Present', 'Absent'];



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
                  "There is no Student added in this Course!",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          }

          return Scaffold(
              backgroundColor: const Color.fromRGBO(1, 60, 88, 1),
              body: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final snap = snapshot.data!.docs;
                        // DocumentSnapshot data = snapshot.data!.docs[index];

                        // final firestoreInstance = FirebaseFirestore.instance;

                        // var firebaseUser =  FirebaseAuth.instance.currentUser!;
                        // firestoreInstance.collection("TeachersData").doc(firebaseUser.uid).collection('Student_Information').doc('Attendance').set(
                        //     {
                        //       "id" : "${snap[index]['class_id']}",
                        //       "attendance" : "$_attendance",
                        //
                        //     }).then((_){
                        //   print("database created!");
                        // });




                        return Column(children: [
                          Card(
                              elevation: 3,
                              shadowColor: Colors.orange,
                              child: Container(
                                  height: Get.height / 8,
                                  width: Get.width,
                                  color: Color(0xffCCBDBD),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          snap[index]['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          snap[index]['class_id'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),

                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 20, right: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: labels.map((s) {
                                              return Row(
                                                children: <Widget>[
                                                  GlowRadio(
                                                    groupValue:  attendance [snap[index]['id']],
                                                    value: s,
                                                    color: Colors.orangeAccent,
                                                    onChange: (value) {
                                                      setState(() {
                                                        print(value);
                                                        value=s;

                                                         attendance [snap[index]['id']]= s;
                                                      });
                                                    },
                                                  ),

                                                     SizedBox(width: 8,),
                                                  Text(s,
                                                      style: TextStyle(
                                                          color: Colors.black,fontSize: 16))
                                                ],
                                              );
                                            }).toList(),
                                          ),
                                        )

                                        // Padding(
                                        //     padding:
                                        //         EdgeInsets.only(left: 20, right: 20),
                                        //     child:
                                        //     Row(children: [
                                        //       Row(
                                        //         children: [
                                        //           GlowRadio<bool>(
                                        //             value: false,
                                        //             groupValue: radioSelected1,
                                        //             color: Colors.orangeAccent,
                                        //             onChange: (value) {
                                        //               setState(() {
                                        //                 radioSelected1 = value;
                                        //                 log(value.toString());
                                        //               });
                                        //             },
                                        //           ),
                                        //           SizedBox(
                                        //             width: 15,
                                        //           ),
                                        //           Text(
                                        //             "Present",
                                        //             style: TextStyle(fontSize: 18),
                                        //           )
                                        //         ],
                                        //       ),
                                        //
                                        //       Spacer(),
                                        //       Row(
                                        //         children: [
                                        //           GlowRadio<bool>(
                                        //             value: true,
                                        //             color: Colors.orangeAccent,
                                        //             groupValue: radioSelected1,
                                        //             onChange: (value) {
                                        //               setState(() {
                                        //                 radioSelected1 = value;
                                        //                 log(value.toString());
                                        //               });
                                        //             },
                                        //           ),
                                        //
                                        //           SizedBox(width: 15,),
                                        //           Text("Absent",
                                        //             style: TextStyle(
                                        //                 fontSize: 18),)
                                        //         ],
                                        //       ),
                                        //     ]))
                                      ])))
                        ]);
                      },
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 45,
                            child:  ElevatedButton(
                              onPressed: (){

                                Get.defaultDialog(
                                    title: "Class Attendance",
                                    backgroundColor: Colors.white,
                                    titleStyle:  TextStyle(color: Colors.black),

                                    cancelTextColor: Colors.black,

                                    confirmTextColor: Colors.white,
                                    barrierDismissible: false,
                                    radius: 15,
                                    content: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Column(
                                                children:  [
                                                  Text('Total Student'),
                                                  SizedBox(height: 10,),
                                                  Text(
                                                    '${snapshot.data!.docs.length}',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                children:  [
                                                  Text('Present'),
                                                  SizedBox(height: 10,),
                                                  Text(
                                                    'null',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                children:  [
                                                  Text('Absent'),
                                                  SizedBox(height: 10,),
                                                  Text('20'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    actions: [
                                      SizedBox(
                                        width: 110,
                                        child: ElevatedButton(
                                          onPressed: (){
                                            Get.snackbar(
                                                'Class Attendance',"Done",
                                                backgroundColor: Colors.white,
                                                snackPosition: SnackPosition.TOP,
                                                messageText: Text('Done',style: TextStyle(fontSize: 16),) ,
                                                titleText:  Text('Class Attendance',style: TextStyle(fontSize: 18),)
                                            );

                                          },
                                          child: Text('CONFIRM',style: TextStyle(fontSize: 16),),
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      SizedBox(
                                        width: 110,
                                        child: ElevatedButton(onPressed: (){
                                          Get.back();
                                        },
                                          child: Text('CANCEL',style: TextStyle(fontSize: 16),),
                                        ),
                                      ),
                                    ]
                                );

                              },
                              child: Text('SUBMIT',style: TextStyle(fontSize: 18,letterSpacing: 1.5,color: Colors.white),),
                            ),
                          ),


                        ],
                      )
                  ),
                ],
              ));
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );

    //   Scaffold(
  }

  void student(Map<String, String> map) {

  }
}
