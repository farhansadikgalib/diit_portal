import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherDashbord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only( left: 10, right: 10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Poly Bhumick',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Poppins_B"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lecturer of CSE',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Poppins"),
                    ),



                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 160,
                  child: InkWell(
                    onTap: ()=>Get.toNamed('/SelectCourceAttendence'),
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
                    onTap: ()=>Get.toNamed('/CourseAttendanceView'),
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
            )
          ],
        ),
      ),
    );
  }
}
