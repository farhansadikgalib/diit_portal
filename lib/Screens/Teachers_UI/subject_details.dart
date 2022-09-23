import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';

class SubjectDetails extends StatefulWidget {
  const SubjectDetails({Key? key}) : super(key: key);

  @override
  State<SubjectDetails> createState() => _SubjectDetailsState();
}

class _SubjectDetailsState extends State<SubjectDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:ColorChanger.scaffoldcolor,
        appBar: AppBar(
          backgroundColor: ColorChanger.appbarColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('View Attendance',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "azonix",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        body: Column(

           children: [
             SizedBox(height: 20,),
             Container(
               height: Get.height/4.5,
               width: Get.width,
               decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.all(Radius.circular(20)),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                       Text('Department :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       SizedBox(width: 10,),
                       Text('CSE',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                     ],
                   ),
                   SizedBox(height:Get.height/30 ,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                       Text('Batch :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       SizedBox(width: 10,),
                       Text('17th',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                     ],
                   ),
                   SizedBox(height:Get.height/30 ,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Section :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       SizedBox(width: 10,),
                       Text('B',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                     ],
                   ),
                 ],
               ),
             ),
            SizedBox(height: Get.height/10,),
             Container(
               height: Get.height/2.5,
               width: Get.width,
               decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.all(Radius.circular(20)),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Subject Name :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       SizedBox(width: 10,),
                       Text('Computer Network',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                     ],
                   ),

                   SizedBox(height:Get.height/40 ,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Divider(
                       thickness: 1.2,
                       color: Colors.black54,
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Container(
                       height: Get.height/15,
                       width: Get.width,
                       color: Colors.orangeAccent.shade100,

                       child: InkWell(
                         onTap: ()=>Get.toNamed('/DateAttendance'),
                         hoverColor: Colors.black54,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: [
                             Text('Class Teken :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                             SizedBox(width: 10,),
                             Text('20 / 35',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                           ],
                         ),
                       ),
                     ),
                   ),


                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Divider(
                       thickness: 1.2,
                       color: Colors.black54,
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Presentation :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                         SizedBox(width: 10,),
                         Text('1',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ),
                   SizedBox(height:Get.height/45 ,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Divider(
                       thickness: 1.2,
                       color: Colors.black54,
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,

                       children: [
                         Text('Assingment :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                         SizedBox(width: 10,),
                         Text('2',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ),
                   SizedBox(height:Get.height/45 ,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Divider(
                       thickness: 1.2,
                       color: Colors.black54,
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Quize :',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       SizedBox(width: 10,),
                       Text('2',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                     ],
                   ),
                 ],
               ),
             ),

           ],
        ),
      ),
    );
  }
}
