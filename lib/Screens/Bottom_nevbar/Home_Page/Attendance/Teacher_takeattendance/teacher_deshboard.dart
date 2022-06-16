import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class TeacherDashbord extends StatefulWidget {


  @override
  State<TeacherDashbord> createState() => _TeacherDashbordState();
}

class _TeacherDashbordState extends State<TeacherDashbord> {
  TextEditingController _CreateNotification = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(


            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffc2caec),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Poly Bhumick',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
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
                            color: Colors.orangeAccent,
                            fontFamily: "Poppins"),
                      ),



                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150.w,
                    height: 160.h,
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
                    width: 150.w,
                    height: 160.h,
                    child: InkWell(
                      onTap: ()=>Get.toNamed('/CourseAttendanceView'),
                      child: Card(
                        elevation: 5,
                        color: Color(0xffF8EFEF),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/viewattendence.png",color: Colors.orange,height: 100,width: 100,),
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

              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 30,right: 30,
                ),
                child: TextFormField(
                  controller: _CreateNotification,
                       maxLines: 2,
                      maxLength: 200,
                  cursorHeight: 20,
                  autofocus: false,
                  decoration: InputDecoration(

                    contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    hintText: 'Create Notification',
                    suffixIcon: IconButton(onPressed: (){
                      Get.snackbar(
                          'Notification',"Done",
                          backgroundColor: Colors.black12,
                          snackPosition: SnackPosition.TOP,
                          messageText:Text('Done',style: TextStyle(fontSize: 16),) ,
                          titleText: Text('Notification',style: TextStyle(fontSize: 18),)
                      );
                      setState((){
                        _CreateNotification;
                        print('Notifi Done');
                      });
                    },
                      icon: Icon(Icons.send,color: Colors.orange,),),
                    border: OutlineInputBorder(),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
