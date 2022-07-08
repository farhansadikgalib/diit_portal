import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class TakeandShowAttendence extends StatelessWidget {
  const TakeandShowAttendence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text('Class Attendence',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: "Baloo"),
              ),
            ),

            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   width: 150,
                //   height: 160,
                //   child: InkWell(
                //     onTap: ()=>Get.toNamed('/TeacherAttendance'),
                //     child: Card(
                //       elevation: 5,
                //       color: Color(0xffF8EFEF),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Image.asset("assets/ic_attendance.png",height: 100,width: 100,),
                //           SizedBox(height: 10,),
                //           Text( "Take Attendence",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),

                SizedBox(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/2.30,
                  child: NeumorphicButton(
                    onPressed: ()=>Get.toNamed('/TeacherAttendance'),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 3,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/ic_attendance.png",

                          height: MediaQuery.of(context).size.height/8.2,
                          width: MediaQuery.of(context).size.width/3,

                        ),
                        const SizedBox(height: 10,),
                        const Text( "Take Attendence",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black54,fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 15,),
                // Container(
                //   width: 150,
                //   height: 160,
                //   child: InkWell(
                //     onTap: ()=>Get.toNamed('/StudentViewAttendance'),
                //     child: Card(
                //       elevation: 5,
                //       color: Color(0xffF8EFEF),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Image.asset("assets/viewattendence.png",height: 100,width: 100,),
                //           SizedBox(height: 10,),
                //           Text( "View Attendence",
                //             style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),

                SizedBox(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/2.30,
                  child: NeumorphicButton(
                    onPressed: ()=>Get.toNamed('/StudentViewAttendance'),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 3,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/viewattendence.png",
                          height: MediaQuery.of(context).size.height/8.2,
                          width: MediaQuery.of(context).size.width/3,
                          color: Colors.orangeAccent,),
                        const SizedBox(height: 10,),
                        const Text( "View Attendence",
                          style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black54,fontWeight: FontWeight.w300),),
                      ],
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
