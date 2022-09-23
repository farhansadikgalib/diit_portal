import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable/expandable.dart';
import 'package:flutter_expandable/expander.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Monday extends StatefulWidget {
  const Monday({Key? key}) : super(key: key);

  @override
  State<Monday> createState() => _SaturdayState();
}

class _SaturdayState extends State<Monday> with TickerProviderStateMixin {
  late AnimationController controller;
  String user_department = '';
  String user_batch = '';
  String user_section = '';
  late CollectionReference ref;
  void initState() {
    super.initState();
    animationController();
    getSharedPreferenceUserData();
  }
  animationController(){
    controller = AnimationController(
        duration: const Duration(
          milliseconds: 100,
        ),
        vsync: this);
  }

  getSharedPreferenceUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_department = prefs.getString('department')!;
      user_batch = prefs.getString('batch')!;
      user_section = prefs.getString('section')!;
    });

    ref = FirebaseFirestore.instance
        .collection("ClassRoutine")
        .doc('Department')
        .collection(user_department)
        .doc(user_batch)
        .collection('Section')
        .doc(user_section)
        .collection('Day')
        .doc('Monday')
        .collection('ClassList');

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: ref.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.docs.length == 0) {
            return Scaffold(
              backgroundColor: ColorChanger.scaffoldcolor,
              body: Center(
                child: Text(
                  "You have no Class Today!",
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
              body: ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final snap = snapshot.data!.docs;
                  return Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.white12,
                            width: 5, //<-- SEE HERE
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white10,
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: SizedBox(
                            // height: MediaQuery.of(context).size.height / 4,
                            width: Get.width,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snap[index]['course_name'],
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          snap[index]['course_code'],
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '8th Semester',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                              Expander(
                                  controller: controller,
                                  rotateArrow: true,
                                  rotatingArrowSize: 40,
                                  rotatingArrowColor: Colors.white70,
                                  arrowRotationDuration:
                                  Duration(milliseconds: 100),
                                  triggerWidgets: [
                                    Container(
                                        margin: EdgeInsets.only(left: 10),
                                        height: 3,
                                        width:
                                        MediaQuery.of(context).size.width /
                                            1.25,
                                        color: Colors.white70)
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),                                child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    snap[index]['lecturer_name'],
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),                                      child: Row(
                                    children: [
                                      Text(
                                        snap[index]['building'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        snap[index]['room'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),                                child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    snap[index]['lecturer_title'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('assets/clock.png'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        snap[index]['time_start'],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        snap[index]['time_end'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Expandable(
                                  height:
                                  Get.height / 3,
                                  controller: controller,
                                  duration: const Duration(seconds: 1),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.white12,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    color: Colors.white10,
                                    child: SizedBox(
                                        height: Get.height /8,
                                        width: Get.width,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 15, right: 5),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [

                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Status:",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors.white70),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                            snap[index]['status'],
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color:Colors.white70 ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      InkWell(
                                                        onTap: (){
                                                          launch("tel://${snap[index]
                                                          ['lecturer_number']}");
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.call,
                                                              size: 18,
                                                              color: Colors.white70,
                                                            ),
                                                            SizedBox(width: 5,),
                                                            Text(
                                                              snap[index]
                                                              ['lecturer_number'],
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors.white70),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(bottom: 10),
                                                  child: Container(
                                                    width: 2,
                                                    height: 75,
                                                    color: Colors.white70,
                                                  ),
                                                ),

                                                SizedBox(width: 25,),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Section:",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors.white70),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                            "B",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors.white70),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Room:",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors.white70),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                            snap[index]['room'],
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors.white70),
                                                          ),
                                                        ],
                                                      ),
                                                      // Row(
                                                      //   children: const [
                                                      //     Text(
                                                      //       "Day:",
                                                      //       style: TextStyle(
                                                      //           fontSize: 20, color: Colors.white),
                                                      //     ),
                                                      //     SizedBox(
                                                      //       width: 5,
                                                      //     ),
                                                      //     Text(
                                                      //       "Sunday",
                                                      //       style: TextStyle(
                                                      //           fontSize: 20,
                                                      //           color: Color(0xff92D306)),
                                                      //     ),
                                                      //   ],
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                        )),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ],
                  );
                },
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
    );

    //   Scaffold(
  }
}