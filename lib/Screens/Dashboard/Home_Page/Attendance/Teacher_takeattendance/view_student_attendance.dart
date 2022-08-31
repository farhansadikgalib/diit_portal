import 'dart:convert';

import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body:ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index){
            return Container(
              height: 80,
              width: 100,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title:  Text(data[index]['Name'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
                  subtitle:  Text(data[index]['Id'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
                  trailing:  Text(data[index]['Active'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
                ),
              ),
            );
          }
      ),
    );
  }
}
