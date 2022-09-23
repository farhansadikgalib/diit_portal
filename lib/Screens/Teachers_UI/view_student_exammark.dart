import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Profile/student_profile.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie/lottie.dart';

class exam_marks extends StatefulWidget {
  const exam_marks({Key? key}) : super(key: key);

  @override
  State<exam_marks> createState() => _exam_marksState();
}

class _exam_marksState extends State<exam_marks> {
  CollectionReference ref = FirebaseFirestore.instance.collection('UserData');

  late List data;

  Future<String?> getData() async {
    final response = await rootBundle
        .loadString('assets/student_atten_view/student_atten.json');
    setState(() {
      data = jsonDecode(response);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  TextEditingController _inputResult = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<QuerySnapshot>(
        future: ref.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.docs.length == 0) {
              return Scaffold(
                backgroundColor:ColorChanger.scaffoldcolor,
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


                backgroundColor: ColorChanger.scaffoldcolor,
                appBar: AppBar(
                  backgroundColor: ColorChanger.appbarColor,
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  title: Text('Exam Mark',
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
                      flex: 6,
                      child: ListView.builder(

                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            final snap = snapshot.data!.docs;
                            return Container(
                              height: 80,
                              width: 100,
                              padding: EdgeInsets.only(left: 10,right: 10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.white10,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                color : Colors.white12,
                                elevation: 3,
                                shadowColor: Colors.white10,
                                child: ListTile(
                                  title: Text(snap[index]['name'],style: TextStyle(color: Colors.white70),),
                                  subtitle: Text(snap[index]['class_id'],style: TextStyle(color: Colors.white70)),
                                  trailing: Container(
                                    height: Get.height / 1,
                                    width: 100,
                                    child: Card(
                                      color : Colors.white12,
                                      elevation: 3,
                                      shadowColor: Colors.white12,                                      child: TextFormField(
                                        controller: _inputResult,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold),
                                        keyboardType: TextInputType.text,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
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

                                  Get.defaultDialog(
                                      title: "Result Publish",
                                      backgroundColor: Colors.grey,
                                      titleStyle: TextStyle(color: Colors.white70),
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
                                                  children: [
                                                    Text('Total Student',style: TextStyle(color: Colors.white70)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('50',style: TextStyle(color: Colors.white70)),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  children: const [
                                                    Text('Pass',style: TextStyle(color: Colors.white70)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('30',style: TextStyle(color: Colors.white70)),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  children: [
                                                    Text('Fail',style: TextStyle(color: Colors.white70),),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('20',style: TextStyle(color: Colors.white70)),
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
                                            onPressed: () {

                                              Get.offAndToNamed("/TeacherDashbord");
                                              Get.snackbar('Notification', "Sent Successfully",
                                                  colorText: Colors.white70,
                                                  backgroundColor: Colors.lightGreen,
                                                  margin: const EdgeInsets.only(
                                                      top: 30, bottom: 30),
                                                  snackPosition: SnackPosition.BOTTOM,
                                                  isDismissible: true,
                                                  forwardAnimationCurve: Curves.easeOutBack,
                                                  messageText: Text(
                                                    'Result Published Successfully',
                                                    style: TextStyle(
                                                        fontSize: 16, color: Colors.white70),
                                                  ),
                                                  titleText: Text(
                                                    'Successful',
                                                    style: TextStyle(
                                                        fontSize: 18, color: Colors.white70),
                                                  ));                                            },
                                            child: Text(
                                              'CONFIRM',
                                              style: TextStyle(fontSize: 16,color: Colors.white70),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 110,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Text(
                                              'CANCEL',
                                              style: TextStyle(fontSize: 16,color: Colors.white70),
                                            ),
                                          ),
                                        ),
                                      ]);
                                },
                                child: Text(
                                  'Result Add',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                      title: "Update Result Publish",
                                      backgroundColor: Colors.grey,
                                      titleStyle: TextStyle(color: Colors.white70),
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
                                                  children: [
                                                    Text('Total Student',style: TextStyle(color: Colors.white70),),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('50',style: TextStyle(color: Colors.white70)),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  children: const [
                                                    Text('Pass',style: TextStyle(color: Colors.white70)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('31',style: TextStyle(color: Colors.white70)),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  children: [
                                                    Text('Fail',style: TextStyle(color: Colors.white70)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('19',style: TextStyle(color: Colors.white70)),
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
                                            onPressed: () {
                                                  Get.snackbar('Notification', "Sent Successfully",
                                                      colorText: Colors.white,
                                                      backgroundColor: Colors.lightGreen,
                                                      margin: const EdgeInsets.only(
                                                          top: 30, bottom: 30),
                                                      snackPosition: SnackPosition.BOTTOM,
                                                      isDismissible: true,
                                                      forwardAnimationCurve: Curves.easeOutBack,
                                                      messageText: Text(
                                                        'Result Updated!',
                                                        style: TextStyle(
                                                            fontSize: 16, color: Colors.white),
                                                      ),
                                                      titleText: Text(
                                                        'Successful',
                                                        style: TextStyle(
                                                            fontSize: 18, color: Colors.white),
                                                      ));
                                              Get.offAndToNamed("/TeacherDashbord");

                                            },
                                            child: Text(
                                              'CONFIRM',
                                              style: TextStyle(fontSize: 16,color: Colors.white70),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 110,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Text(
                                              'CANCEL',
                                              style: TextStyle(fontSize: 16,color: Colors.white70),
                                            ),
                                          ),
                                        ),
                                      ]);
                                },
                                child: Text(
                                  'Update Result ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )),
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
}
