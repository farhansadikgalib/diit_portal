import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';


class StudentNameAttendencelist extends StatefulWidget {

  @override
  State<StudentNameAttendencelist> createState() => _StudentNameAttendencelistState();
}

class _StudentNameAttendencelistState extends State<StudentNameAttendencelist> {
  // final List StudentName = [
  //   'Md.Abdur Rahman',
  //   'Farhan Sadik Galib'
  //
  // ];
  //
  // final List StudentID = [
  //   '170115',
  //   '170138'
  // ];



  final int _Value = 0;
  bool radioSelected1 = false;
  bool radioSelected2 = false;
  bool radioSelected3 = false;
  bool radioSelected4 = false;
  bool radioSelected5 = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffCCBDBD),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          const Text('Farhan Sadik Galib',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          const SizedBox(height: 5,),
                          const Text('170138', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),),
                          const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: true,
                                      groupValue: radioSelected1,
                                      color: Colors.orangeAccent,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 15,),
                                    const Text("Present",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                                const Spacer(),
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: false,
                                      color: Colors.orangeAccent,
                                      groupValue: radioSelected1,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),

                                    const SizedBox(width: 15,),
                                    const Text("Absent",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffCCBDBD),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          const Text('Farhan Sadik Galib',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          const SizedBox(height: 5,),
                          const Text('170138', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),),
                          const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: true,
                                      groupValue: radioSelected1,
                                      color: Colors.orangeAccent,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 15,),
                                    const Text("Present",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                                const Spacer(),
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: false,
                                      color: Colors.orangeAccent,
                                      groupValue: radioSelected1,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),

                                    const SizedBox(width: 15,),
                                    const Text("Absent",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffCCBDBD),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          const Text('Farhan Sadik Galib',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          const SizedBox(height: 5,),
                          const Text('170138', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),),
                          const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: true,
                                      groupValue: radioSelected1,
                                      color: Colors.orangeAccent,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 15,),
                                    const Text("Present",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                                const Spacer(),
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: false,
                                      color: Colors.orangeAccent,
                                      groupValue: radioSelected1,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),

                                    const SizedBox(width: 15,),
                                    const Text("Absent",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffCCBDBD),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          const Text('Farhan Sadik Galib',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          const SizedBox(height: 5,),
                          const Text('170138', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),),
                          const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: true,
                                      groupValue: radioSelected1,
                                      color: Colors.orangeAccent,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 15,),
                                    const Text("Present",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                                const Spacer(),
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: false,
                                      color: Colors.orangeAccent,
                                      groupValue: radioSelected1,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),

                                    const SizedBox(width: 15,),
                                    const Text("Absent",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffCCBDBD),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          const Text('Farhan Sadik Galib',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          const SizedBox(height: 5,),
                          const Text('170138', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),),
                          const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: true,
                                      groupValue: radioSelected1,
                                      color: Colors.orangeAccent,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),
                                    const SizedBox(width: 15,),
                                    const Text("Present",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                                const Spacer(),
                                Row(
                                  children: [
                                    GlowRadio<bool>(
                                      value: false,
                                      color: Colors.orangeAccent,
                                      groupValue: radioSelected1,
                                      onChange: (value) {
                                        setState(() {
                                          radioSelected1 = value;
                                          log(value.toString());
                                        });
                                      },
                                    ),

                                    const SizedBox(width: 15,),
                                    const Text("Absent",style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]


              ),
            ),

              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 300,
                  height: 45,
                  child:  ElevatedButton(
                      onPressed: (){
                        Get.defaultDialog(
                            title: "Class Attendance",
                            backgroundColor: Colors.white,
                            titleStyle: const TextStyle(color: Colors.black),

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
                                         children: const [
                                           Text('Total Student'),
                                           SizedBox(height: 10,),
                                           Text('50'),
                                         ],
                                       ),
                                   ),
                                   const SizedBox(width: 10,),
                                   Expanded(
                                       flex: 1,
                                       child: Column(
                                         children: const [
                                           Text('Present'),
                                           SizedBox(height: 10,),
                                           Text('30'),
                                         ],
                                       ),
                                   ),
                                   const SizedBox(width: 10,),
                                   Expanded(
                                       flex: 1,
                                       child: Column(
                                         children: const [
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
                                  messageText:const Text('Done',style: TextStyle(fontSize: 16),) ,
                                  titleText: const Text('Class Attendance',style: TextStyle(fontSize: 18),)
                                );

                              },
                                  child:const Text('CONFIRM',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                              const SizedBox(width: 20,),
                            SizedBox(
                              width: 110,
                              child: ElevatedButton(onPressed: (){
                                Get.back();
                                },
                                  child:const Text('CANCEL',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                          ]

                        );


                        // showDialog(
                        //   context: context, builder: (cntx)=>AlertDialog(
                        //   elevation: 5,
                        //   title: Text('Class Attendance'),
                        //   actions: <Widget>[
                        //     ElevatedButton(onPressed: (){},
                        //         child:Text('CONFIRM'),
                        //     ),
                        //     ElevatedButton(onPressed: (){},
                        //         child:Text('CANCEL'),
                        //     ),
                        //   ],
                        //     content: Column(
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Expanded(
                        //               flex: 2,
                        //               child: Column(
                        //                 children: [
                        //                   Text('Total Student'),
                        //                   SizedBox(height: 10,),
                        //                   Text('50'),
                        //                 ],
                        //               ),
                        //             ),
                        //             SizedBox(width: 10,),
                        //             Expanded(
                        //               flex: 1,
                        //               child: Column(
                        //                 children: [
                        //                   Text('Present'),
                        //                   SizedBox(height: 10,),
                        //                   Text('30'),
                        //                 ],
                        //               ),
                        //             ),
                        //             SizedBox(width: 10,),
                        //             Expanded(
                        //               flex: 1,
                        //               child: Column(
                        //                 children: [
                        //                   Text('Absent'),
                        //                   SizedBox(height: 10,),
                        //                   Text('20'),
                        //                 ],
                        //               ),
                        //             ),
                        //           ],
                        //         )
                        //       ],
                        //     ),
                        //
                        // ),
                        // );
                      },
                      child: const Text('NEXT',style: TextStyle(fontSize: 18,letterSpacing: 1.5),),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

}
