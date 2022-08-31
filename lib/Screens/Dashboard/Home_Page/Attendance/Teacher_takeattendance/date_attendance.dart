import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateAttendance extends StatefulWidget {
  const DateAttendance({Key? key}) : super(key: key);

  @override
  State<DateAttendance> createState() => _DateAttendanceState();
}

class _DateAttendanceState extends State<DateAttendance> {

   List<String> Classno =["1","2",'3','4','5','6','7','8','9','10',];
   List<String> ClassDate = ['06/07/2022','10/07/2022','14/07/2022','18/07/2022','22/07/2022','26/07/2022','30/07/2022','04/08/2022','08/08/2022','12/08/2022',];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        body: ListView.builder(
          itemCount: Classno.length,
            itemBuilder: (context,index){
          return InkWell(
            onTap: ()=>Get.toNamed('/ViewStudentAttendance'),
            child: Container(
                height: 80,
                width: 100,
                child: Card(
                  color: Colors.white,
                  child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Class No : ${Classno[index]}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
                      Text('P/A : 27/23',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
                      Text(' Date : ${ClassDate[index]}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),

                    ],
                  ),

                ),
            ),
          );
           }
          ),
      ),
    );
  }
}
