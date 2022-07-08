import 'package:flutter/material.dart';
import 'package:flutter_expandable/expandable.dart';
import 'package:flutter_expandable/expander.dart';

class MonDay extends StatefulWidget {
  const MonDay({Key? key}) : super(key: key);

  @override
  State<MonDay> createState() => _SaturdayState();
}

class _SaturdayState extends State<MonDay> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(
          milliseconds: 100,
        ),
        vsync: this);
    super.initState();
  }
  
  late  bool notification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff6cc9d0),
      body: Column(children: [
        Card(
          color: const Color(0xff92B9A6),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: SizedBox(
              // height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Image Procssing',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'CSE-813',
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
                    
                    IconButton(onPressed: (){
                      setState((){
                        notification = !notification;
                      });
                    },
                        icon: (notification == true)?const Icon( Icons.notifications_active): const Icon(Icons.notifications_off)
                    ),
                  ],
                ),
                Expander(
                    controller: controller,
                    rotateArrow: true,
                    rotatingArrowSize: 40,
                    rotatingArrowColor: Colors.black,
                    arrowRotationDuration: const Duration(milliseconds: 100),
                    triggerWidgets: [
                      Container(
                          height: 3,
                          width: MediaQuery.of(context).size.width / 1.25,
                          color: Colors.white)
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Poly Bhoumik',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'M-302',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Lecturer , Dept of CSE',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/clock.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '09:00AM-10:30AM',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
               const SizedBox(height: 15,),
                Expandable(
                    height: MediaQuery.of(context).size.height / 3,

                    controller: controller,
                    duration: const Duration(seconds: 1),
                    child: Container(
                        color: const Color(0xff4D4A4A),
                        height: MediaQuery.of(context).size.height / 7,
                        width: double.infinity,

                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 15, right: 5),
                          child: Row(children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Status:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "On Time",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff92D306)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.call,
                                          size: 22,
                                          color: Colors.red,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          " 01753248377",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff92D306)),
                                        ), // ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                width: 2,
                                height: 200,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Section:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "B",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff92D306)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Room:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "302",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff92D306)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Day:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Sunday",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff92D306)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ))),
                const SizedBox(height: 10,),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
