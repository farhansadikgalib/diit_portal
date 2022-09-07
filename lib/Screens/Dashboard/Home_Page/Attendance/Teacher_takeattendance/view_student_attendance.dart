import 'dart:convert';
import 'dart:developer';

import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';

class ViewStudentAttendance extends StatefulWidget {
  const ViewStudentAttendance({Key? key}) : super(key: key);

  @override
  State<ViewStudentAttendance> createState() => _ViewStudentAttendanceState();
}

class _ViewStudentAttendanceState extends State<ViewStudentAttendance> {
   late List data;
 Future<String?>getData()async{

   final response = await rootBundle.loadString('assets/student_atten_view/student_atten.json');
   setState((){
     data = jsonDecode(response);
   });
  }

  @override
  void initState() {
   getData();
    super.initState();
  }
   final int _Value = 0;
   bool radioSelected1 = false;
   bool radioSelected2 = false;
   bool radioSelected3 = false;
   bool radioSelected4 = false;
   bool radioSelected5 = false;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        body:Column(
          children: [
            Expanded(
              flex:12,
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return Card(
                       elevation: 3,
                       shadowColor: Colors.orange,
                       child: Container(
                         height: Get.height/8,
                         width: MediaQuery.of(context).size.width,
                         color:  Color(0xffCCBDBD),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(height: 10,),
                             Text(data[index]["Name"],
                               style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 5,),
                             Text(data[index]['Id'], style: TextStyle(
                                 fontSize: 20, fontWeight: FontWeight.w400),),
                             SizedBox(height: 5,),
                             Padding(
                               padding:  EdgeInsets.only(
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
                                       SizedBox(width: 15,),
                                       Text("Present",style: TextStyle(fontSize: 18),)
                                     ],
                                   ),

                                   Spacer(),
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

                                       SizedBox(width: 15,),
                                       Text("Absent",style: TextStyle(fontSize: 18),)
                                     ],
                                   ),

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
            Expanded(
              flex: 1,
              child: SizedBox(
              width: 350,
              height: 10,
              child:  ElevatedButton(
                onPressed: (){
                      Get.defaultDialog(
                      title: "Update Class Attendance",
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
                                    Text('50'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: const [
                                    Text('Present'),
                                    SizedBox(height: 10,),
                                    Text('31'),
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
                                    Text('19'),
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
                                  'Update Class Attendance',"Done",
                                  backgroundColor: Colors.white,
                                  snackPosition: SnackPosition.TOP,
                                  messageText: Text('Done',style: TextStyle(fontSize: 16),) ,
                                  titleText:  Text('Update Class Attendance',style: TextStyle(fontSize: 18),)
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
                child: Text('UPDATE',style: TextStyle(fontSize: 18,letterSpacing: 1.5,color: Colors.white),),
              ),
            ),),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
