
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Screens/IntroScreen/is1_department.dart';
import 'package:diit_portal/Screens/IntroScreen/is2_batch.dart';
import 'package:diit_portal/Screens/IntroScreen/is3_section.dart';
import 'package:diit_portal/Screens/IntroScreen/is4_welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Introscreen_Start extends StatefulWidget {
  const Introscreen_Start({Key? key}) : super(key: key);

  @override
  State<Introscreen_Start> createState() => _Introscreen_StartState();
}

class _Introscreen_StartState extends State<Introscreen_Start> {


  PageController _controller = PageController();

  bool LastPage = false;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
             onPageChanged: (index){
                 setState((){
                   LastPage = (index == 3);
                 });
             },
             children: [
               Batch(),
               Department(),

               Section(),
               Welcome(),

             ],
            ),

            Container(
              alignment: Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SmoothPageIndicator(
                     // effect:JumpingDotEffect(
                     //   activeDotColor: Colors.white,
                     // ),

                      controller: _controller, count: 4),

                  LastPage? GestureDetector(
                       onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        //  Get.offAndToNamed('/DashBoard');


                       },
                        child:  Text("",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                  ) : GestureDetector(
                       onTap: (){
                         _controller.nextPage(duration: Duration(milliseconds: 500),
                             curve:Curves.easeIn );
                             // .then((value){
                             //   setState(() {
                             //
                             //   });
                        // });
                       },
                       child:Icon(Icons.keyboard_double_arrow_right,color: Colors.white,size: 30,),
                  )
                ],
              ),
            ),

          ],
        ),

    );
  }
}
