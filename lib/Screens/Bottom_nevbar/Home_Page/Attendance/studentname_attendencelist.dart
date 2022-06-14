import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class StudentNameAttendencelist extends StatefulWidget {

  @override
  State<StudentNameAttendencelist> createState() => _StudentNameAttendencelistState();
}

class _StudentNameAttendencelistState extends State<StudentNameAttendencelist> {
  final List StudentName = [
    'Md.Abdur Rahman',
    'Farhan Sadik Galib'
    
  ];

  final List StudentID = [
    '170115',
    '170138'
  ];



  int _Value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.amber,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 1.2,

                  child: ListView.builder(
                      itemCount: StudentName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Container(
                            height: 110,
                            color: Color(0xffCCBDBD),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 10,),
                                Text('${StudentName[index]}',
                                  style: TextStyle(fontSize: 18),),
                                SizedBox(height: 5,),
                                Text('ID - ${StudentID[index]}', style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),
            ),
              SizedBox(height: 20,),
              SizedBox(
                width: 300,
                height: 45,
                child:  ElevatedButton(
                    onPressed: (){
                      Get.defaultDialog(
                          title: "Class Attendance",
                          backgroundColor: Colors.white,
                          titleStyle: TextStyle(color: Colors.black),

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
                                       children: [
                                         Text('Total Student'),
                                         SizedBox(height: 10,),
                                         Text('50'),
                                       ],
                                     ),
                                 ),
                                 SizedBox(width: 10,),
                                 Expanded(
                                     flex: 1,
                                     child: Column(
                                       children: [
                                         Text('Present'),
                                         SizedBox(height: 10,),
                                         Text('30'),
                                       ],
                                     ),
                                 ),
                                 SizedBox(width: 10,),
                                 Expanded(
                                     flex: 1,
                                     child: Column(
                                       children: [
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
                                messageText:Text('Done',style: TextStyle(fontSize: 16),) ,
                                titleText: Text('Class Attendance',style: TextStyle(fontSize: 18),)
                              );

                            },
                                child:Text('CONFIRM',style: TextStyle(fontSize: 16),),
                            ),
                          ),
                            SizedBox(width: 20,),
                          SizedBox(
                            width: 110,
                            child: ElevatedButton(onPressed: (){
                              Get.back();
                              },
                                child:Text('CANCEL',style: TextStyle(fontSize: 16),),
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
                    child: Text('NEXT',style: TextStyle(fontSize: 18,letterSpacing: 1.5),),
                ),
              )
          ],
        ),
      ),
    );
  }

}
