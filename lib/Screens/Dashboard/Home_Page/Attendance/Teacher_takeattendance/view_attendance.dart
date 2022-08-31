import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherViewAttendance extends StatefulWidget {
  const TeacherViewAttendance({Key? key}) : super(key: key);

  @override
  State<TeacherViewAttendance> createState() => _TeacherViewAttendanceState();
}

class _TeacherViewAttendanceState extends State<TeacherViewAttendance> {

  List<String> subname = ['Computer Network',"Computer\n Network Lab", "Image Processing",'Web'];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text('View Attendance',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: GridView.builder(
                    itemCount: subname.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2),

                    itemBuilder: (BuildContext context, index){
                     return InkWell(
                       onTap: ()=>Get.toNamed('/SubjectDetails'),
                       child: Card(
                         color: Colors.white,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                                   Image.asset("assets/attendance_ic.png",
                                     height: MediaQuery.of(context).size.height/10,
                                     width: MediaQuery.of(context).size.width/2,
                                   ),
                             SizedBox(height: 10,),
                               Text(subname[index],style: TextStyle(fontSize: 18,color: Colors.black45,fontWeight: FontWeight.bold),)
                           ],
                         ),
                       ),
                     );
                    }
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
