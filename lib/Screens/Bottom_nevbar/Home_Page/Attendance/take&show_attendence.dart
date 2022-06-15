import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TakeandShowAttendence extends StatelessWidget {
  const TakeandShowAttendence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text('Class Attendence',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: "Baloo"),
              ),
            ),

            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 160,
                  child: InkWell(
                    onTap: ()=>Get.toNamed('/TeacherAttendance'),
                    child: Card(
                      elevation: 5,
                      color: Color(0xffF8EFEF),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/ic_attendance.png",height: 100,width: 100,),
                          SizedBox(height: 10,),
                          Text( "Take Attendence",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 150,
                  height: 160,
                  child: InkWell(
                    onTap: ()=>Get.toNamed('/StudentViewAttendance'),
                    child: Card(
                      elevation: 5,
                      color: Color(0xffF8EFEF),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/viewattendence.png",height: 100,width: 100,),
                          SizedBox(height: 10,),
                          Text( "View Attendence",
                            style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
