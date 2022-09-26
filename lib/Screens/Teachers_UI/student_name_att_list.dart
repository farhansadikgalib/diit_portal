
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie/lottie.dart';

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

  CollectionReference ref = FirebaseFirestore.instance.collection('UserData');
  var _sendId = '';
  var _sendAttendance = '';

  /// firebase

  // final int _Value = 0;
  // bool radioSelected1 = false;

  UserData() {
    student({
      'id': 'class_id'
    });
    attendance ['class_id'] = '';

  }

  Map<String, dynamic> attendance = {};

  List<String> labels = ['Present', 'Absent'];


  /// test
  final List<String> datax = <String>['A', 'B', 'C', 'D'];

  /// test

  // _SubmitButton() {
  //   final firestoreInstance = FirebaseFirestore.instance;
  //
  //   var firebaseUser = FirebaseAuth.instance.currentUser!;
  //   firestoreInstance.collection("TeachersData").doc(firebaseUser.uid)
  //       .collection('Student_Information').doc('Attendance').set(
  //       {
  //         "id": "$_sendId",
  //         "attendance": "$_sendAttendance",
  //
  //       })
  //       .then((_) {
  //     print("database send on firebase!");
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<QuerySnapshot>(
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
                appBar: AppBar(
                  backgroundColor: ColorChanger.appbarColor,
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  title: Text('Take Attendance',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "azonix",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
                body: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final snap = snapshot.data!.docs;
                          // DocumentSnapshot data = snapshot.data!.docs[index];


                          return Column(children: [
                            Card(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.white10,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                color : Colors.white12,
                                elevation: 3,
                                shadowColor: Colors.white10,

                                child: SizedBox(
                                  height: Get.height/8,
                                  width:Get.width/1.05,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          snap[index]['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white70),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          snap[index]['class_id'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white70,
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
                                                    groupValue: attendance [snap[index]['id']],
                                                    value: s,
                                                    color: Colors.orangeAccent,
                                                    onChange: (value) {
                                                      setState(() {
                                                        // print(value);

                                                        attendance [snap[index]['id']] = s;

                                                        _sendId = snap[index]['class_id'];
                                                        _sendAttendance = s;

                                                        print(snap[index]['class_id']);


                                                        List<StudentsData> stData = [
                                                        ];

                                                        stData.add(StudentsData(
                                                            id: _sendId,
                                                            name: "Farhan",
                                                            attendance: _sendAttendance)
                                                        );


                                                        for(var i=0; i<=snap.length;i++){
                                                          Student(name: _sendId, rollno: _sendAttendance);
                                                        }


                                                        print(stData);


                                                        final firestoreInstance = FirebaseFirestore.instance;

                                                        var firebaseUser =  FirebaseAuth.instance.currentUser!;
                                                        firestoreInstance.collection("TeachersData").doc(firebaseUser.uid).collection('Student_Information').doc('Attendance').collection('26-09-23').doc().set(
                                                            {
                                                              "id" : "$_sendId",
                                                              "attendance" : "$_sendAttendance",

                                                            }).then((_){
                                                          print("database send on firebase!");
                                                        });


                                                      });
                                                    },
                                                  ),

                                                  SizedBox(width: 8,),
                                                  Text(s,
                                                      style: TextStyle(
                                                          color: Colors.white70,
                                                          fontSize: 16))
                                                ],
                                              );
                                            }).toList(),
                                          ),
                                        )

                                      ]),
                                ))
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
                              child: ElevatedButton(
                                onPressed: () {
                                  // _SubmitButton();
                                  print('successful');
                                  List<Student> studentx=[];
                                  print(studentx);

                                  Get.defaultDialog(
                                      title: "Class Attendance",
                                      backgroundColor: Colors.grey,
                                      titleStyle:  TextStyle(color: Colors.white70),

                                      cancelTextColor: Colors.white70,

                                      confirmTextColor: Colors.white70,
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
                                                    Text('Total Student',style: TextStyle(color: Colors.white70)),
                                                    SizedBox(height: 10,),
                                                    Text(
                                                      '${snapshot.data!.docs.length}',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.white70,
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
                                                    Text('Present',style: TextStyle(color: Colors.white70)),
                                                    SizedBox(height: 10,),
                                                    Text(
                                                      '7',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.white70,
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
                                                    Text('Absent',style: TextStyle(color: Colors.white70),),
                                                    SizedBox(height: 10,),
                                                    Text('7',style: TextStyle(color: Colors.white70)),
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
                                                  "Successfully","You've taken your class attendance.",
                                                  colorText: Colors.white,
                                                  backgroundColor: Colors.lightGreen,
                                                  margin: const EdgeInsets.only(
                                                      top: 30, bottom: 30),
                                                  snackPosition: SnackPosition.BOTTOM,
                                                  isDismissible: true,
                                                  forwardAnimationCurve: Curves.easeOutBack,
                                                  messageText: Text(" You've taken your class attendance.",style: TextStyle(fontSize: 16),) ,
                                                  titleText:  Text("Successfully",style: TextStyle(fontSize: 18),)
                                              );
                                              Get.offAndToNamed("/TeacherDashbord");


                                            },

                                            child: Text('CONFIRM',style: TextStyle(color: Colors.white70,fontSize: 16)),
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        SizedBox(
                                          width: 110,
                                          child: ElevatedButton(onPressed: (){
                                            Get.back();
                                          },
                                            child: Text('CANCEL',style: TextStyle(color: Colors.white70,fontSize: 16),),
                                          ),
                                        ),
                                      ]
                                  );
                                },
                                child: Text('SUBMIT', style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white70),),
                              ),
                            ),


                          ],
                        )
                    ),
                  ],
                ));
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
      ),
    );

    //   Scaffold(
  }

  void student(Map<String, String> map) {

  }
}


class StudentsData {
  //modal class for Person object
  String id, name, attendance;

  StudentsData(
      {required this.id, required this.name, required this.attendance});
}
class Student{
  String name;
  String rollno;

  Student({required this.name, required this.rollno});
}


/// /// test