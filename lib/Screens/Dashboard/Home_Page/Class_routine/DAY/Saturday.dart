import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable/expandable.dart';
import 'package:flutter_expandable/expander.dart';
import 'package:url_launcher/url_launcher.dart';

class Saturday extends StatefulWidget {
  const Saturday({Key? key}) : super(key: key);

  @override
  State<Saturday> createState() => _SaturdayState();
}

class _SaturdayState extends State<Saturday>  with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    animationController();
  }
  animationController(){
    controller = AnimationController(
        duration: const Duration(
          milliseconds: 100,
        ),
        vsync: this);

  }

  // late  bool notification = false;

  CollectionReference ref = FirebaseFirestore.instance
      .collection("ClassRoutine")
      .doc('Department')
      .collection('CSE')
      .doc('17')
      .collection('Section')
      .doc('A')
      .collection('Day')
      .doc('Saturday')
      .collection('ClassList');

  // late  bool notification = false;

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
              backgroundColor: const Color.fromRGBO(1, 60, 88, 1),
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
                        color: Color(0xff92B9A6),
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: SizedBox(
                            // height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snap[index]['course_name'],
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        snap[index]['course_code'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '8th Semester',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),

                                  // IconButton(onPressed: (){
                                  //   setState((){
                                  //     notification = !notification;
                                  //   });
                                  // },
                                  //     icon: (notification == true)?const Icon( Icons.notifications_active): const Icon(Icons.notifications_off)
                                  // ),
                                ],
                              ),
                              Expander(
                                  controller: controller,
                                  rotateArrow: true,
                                  rotatingArrowSize: 40,
                                  rotatingArrowColor: Colors.black,
                                  arrowRotationDuration:
                                  Duration(milliseconds: 100),
                                  triggerWidgets: [
                                    Container(
                                        height: 3,
                                        width:
                                        MediaQuery.of(context).size.width /
                                            1.25,
                                        color: Colors.white)
                                  ]),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    snap[index]['lecturer_name'],
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        snap[index]['building'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        snap[index]['room'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    snap[index]['lecturer_title'],
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
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
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        snap[index]['time_end'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Expandable(
                                  height:
                                  MediaQuery.of(context).size.height / 3,
                                  controller: controller,
                                  duration: const Duration(seconds: 1),
                                  child: Container(
                                      color: const Color(0xff4D4A4A),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          8,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, left: 15, right: 5),
                                        child: Row(children: [
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
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      snap[index]['status'],
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Color(
                                                              0xff92D306)),
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
                                                        size: 22,
                                                        color: Colors.red,
                                                      ),
                                                      Text(
                                                        snap[index]
                                                        ['lecturer_number'],
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Color(
                                                                0xff92D306)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(bottom: 10),
                                            child: Container(
                                              width: 2,
                                              height: 75,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
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
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "B",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Color(
                                                              0xff92D306)),
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
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      snap[index]['room'],
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Color(
                                                              0xff92D306)),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
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
                                      ))),
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
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );

    //   Scaffold(
  }
}

