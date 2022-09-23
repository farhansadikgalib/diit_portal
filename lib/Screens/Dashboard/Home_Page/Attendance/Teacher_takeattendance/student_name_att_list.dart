
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/view_student_attendance.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
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

  _SubmitButton() {
    final firestoreInstance = FirebaseFirestore.instance;

    var firebaseUser = FirebaseAuth.instance.currentUser!;
    firestoreInstance.collection("TeachersData").doc(firebaseUser.uid)
        .collection('Student_Information').doc('Attendance').set(
        {
          "id": "$_sendId",
          "attendance": "$_sendAttendance",

        })
        .then((_) {
      print("database send on firebase!");
    });
  }



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


                        return Column(children: [
                          Card(
                              elevation: 3,
                              shadowColor: Colors.orange,
                              child: Container(
                                  height: Get.height / 8,
                                  width: Get.width,
                                  color: Color(0xffCCBDBD),
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
                                                        firestoreInstance.collection("TeachersData").doc(firebaseUser.uid).collection('Student_Information').doc('Attendance').collection('20-21-23').doc().set(
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
                                                          color: Colors.black,
                                                          fontSize: 16))
                                                ],
                                              );
                                            }).toList(),
                                          ),
                                        )

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
                            child: ElevatedButton(
                              onPressed: () {
                                // _SubmitButton();
                                print('successful');
                                List<Student> studentx=[];
                                print(studentx);

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
                                                    '7',
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
                                                  Text('7'),
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
                                            Get.offAndToNamed("/TeacherDashbord");


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
                              child: Text('SUBMIT', style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1.5,
                                  color: Colors.white),),
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