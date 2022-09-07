import 'dart:convert';

import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class exam_marks extends StatefulWidget {
  const exam_marks({Key? key}) : super(key: key);

  @override
  State<exam_marks> createState() => _exam_marksState();
}

class _exam_marksState extends State<exam_marks> {
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

   TextEditingController _inputResult = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context,index){
                return Container(
                  height: 80,
                  width: 100,
                  child: Card(
                    color: Colors.white,
                    child:ListTile(
                      title: Text(data[index]['Name']),
                      subtitle: Text(data[index]['Id']),
                      trailing: Container(
                        height: Get.height/1,
                        width: 120,
                        child: Card(
                          color: Colors.black12,
                          child: TextFormField(
                            style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.text,
                            textAlign:TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
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
                    child:  ElevatedButton(
                      onPressed: (){
                        Get.defaultDialog(
                            title: "Result Publish",
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
                                          Text('Pass'),
                                          SizedBox(height: 10,),
                                          Text('30'),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children:  [
                                          Text('Fail'),
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
                                        'Result Publish',"Done",
                                        backgroundColor: Colors.white,
                                        snackPosition: SnackPosition.TOP,
                                        messageText: Text('Done',style: TextStyle(fontSize: 16),) ,
                                        titleText:  Text('Result Publish',style: TextStyle(fontSize: 18),)
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
                      child: Text('Result Add',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    height: 45,
                    child:  ElevatedButton(
                      onPressed: (){
                        Get.defaultDialog(
                            title: "Update Result Publish",
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
                                          Text('Pass'),
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
                                          Text('Fail'),
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
                                        'Update Result Publish',"Done",
                                        backgroundColor: Colors.white,
                                        snackPosition: SnackPosition.TOP,
                                        messageText: Text('Done',style: TextStyle(fontSize: 16),) ,
                                        titleText:  Text('Update Result Publish',style: TextStyle(fontSize: 18),)
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
                      child: Text('Update Result ',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              )
          ),
        ],
      )
    );
  }
}
