import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

import 'new test/names.dart';

class StudentAttennameList extends StatefulWidget {
  @override
  State<StudentAttennameList> createState() => _StudentAttennameListState();
}

class _StudentAttennameListState extends State<StudentAttennameList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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

  final int _Value = 0;
  bool radioSelected1 = false;

  // bool radioSelected2 = false;
  // bool radioSelected3 = false;
  // bool radioSelected4 = false;
  // bool radioSelected5 = false;

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
                  "You have no Student in this Course!",
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
              body: ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final snap = snapshot.data!.docs;





                  return Column(children: [
                    Card(
                        elevation: 3,
                        shadowColor: Colors.orange,
                        child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 8,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            color: Color(0xffCCBDBD),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
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
                                      child:
                                      Row(children: [
                                        Row(
                                          children: [
                                            GlowRadio<bool>(
                                              value: false,
                                              groupValue: radioSelected1,
                                              color: Colors.orangeAccent,
                                              onChange: (value) {
                                                setState(() {
                                                  radioSelected1 = value;
                                                  log(value.toString());
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Present",
                                              style: TextStyle(fontSize: 18),
                                            )
                                          ],
                                        ),

                                        Spacer(),
                                        Row(
                                          children: [
                                            GlowRadio<bool>(
                                              value: true,
                                              color: Colors.orangeAccent,
                                              groupValue: radioSelected1,
                                              onChange: (value) {
                                                setState(() {
                                                  radioSelected1 = value;
                                                  log(value.toString());
                                                });
                                              },
                                            ),

                                            SizedBox(width: 15,),
                                            Text("Absent",
                                              style: TextStyle(
                                                  fontSize: 18),)
                                          ],
                                        ),
                                      ]))
                                ])))
                  ]);
                },
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


  buildAttendenceCard(BuildContext context, int index) {

    var index2 = index + 1;

    return FocusedMenuHolder(
      menuWidth: MediaQuery
          .of(context)
          .size
          .width * 0.75,
      duration: Duration(milliseconds: 350),
      animateMenuItems: true,
      onPressed: () {
        setState(() {
          ChangeState(isSelectedList, index, 1);
          ChangeColor(isSelectedList, index);
        });
        // Navigator.of(this.context).push(
        // MaterialPageRoute(builder: (context) => ProfilePage()),
        // );
      },
      menuItems: <FocusedMenuItem>[
        FocusedMenuItem(
            title: Text(
              "Present",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            onPressed: () {
              setState(() {
                ChangeState(isSelectedList, index, 1);
                ChangeColor(isSelectedList, index);
              });
              // Navigator.of(this.context).push(
              //   MaterialPageRoute(builder: (context) => ProfilePage()),
              // );
            },
            backgroundColor: Colors.green),
        //00CE2D
        FocusedMenuItem(
            title: Text(
              "Absent",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onPressed: () {
              setState(() {
                ChangeState(isSelectedList, index, 0);
                ChangeColor(isSelectedList, index);
              });
              // Navigator.of(this.context).push(
              //   MaterialPageRoute(builder: (context) => EditProfilePage()),
              // );
            },
            backgroundColor: Colors.red),
      ],
      child: new Container(
        child: Card(
          color: attendencecolor[index],
          elevation: 2,
          shadowColor: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Text(
                  index2.toString(),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 25,
                ),
                // Text(
                //   // snap[index]['name'],
                //   style: TextStyle(fontSize: 20),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void ChangeState(List<int> isSelectedList, int value, int i) {
    isSelectedList[value] = i;

  }
  void ResetState() {
    for(int state =0 ; state < attendencecolor.length ; state++){
      attendencecolor[state] = Colors.white;
    }

  }

  void ChangeColor(List<int> isSelectedList, int index) {
    if (isSelectedList[index] == 1) {
      attendencecolor[index] = Colors.green ;
      // print("changed to : "+ isSelectedList.toString());
    }
    else {
      attendencecolor[index] = Colors.red;
      // print("changed to : "+ isSelectedList.toString());
    }
  }
}




