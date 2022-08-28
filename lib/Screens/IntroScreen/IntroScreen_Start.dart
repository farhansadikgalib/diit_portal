
import 'package:diit_portal/Screens/IntroScreen/is1_department.dart';
import 'package:diit_portal/Screens/IntroScreen/is2_batch.dart';
import 'package:diit_portal/Screens/IntroScreen/is3_section.dart';
import 'package:diit_portal/Screens/IntroScreen/is4_welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Introscreen_Start extends StatefulWidget {
  const Introscreen_Start({Key? key}) : super(key: key);

  @override
  State<Introscreen_Start> createState() => _Introscreen_StartState();
}

class _Introscreen_StartState extends State<Introscreen_Start> {


  PageController _controller = PageController();

  bool LastPage = false;


  String user_email='';
  String user_id='';
  String user_department='';
  String user_batch='';
  String user_section='';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_email = prefs.getString('user_email')!;
      user_id = prefs.getString('user_id')!;
      user_department = prefs.getString('department')!;
      user_batch = prefs.getString('batch')!;
      user_section = prefs.getString('section')!;

      print(user_id);
      print(user_email);
      print(user_department);
      print(user_batch);
      print(user_section);




    });
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
             Department(),
             IntroScreen1(),
             IntroPage2(),
             IntroPage3(),

           ],
          ),
          Container(
            alignment: Alignment(0,0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                SmoothPageIndicator(
                  effect:JumpingDotEffect(
                    activeDotColor: Colors.white,
                  ),

                    controller: _controller, count: 4),

                LastPage? GestureDetector(
                     onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                       Get.offAndToNamed('/DashBoard');
                       getUserData();


                     },
                     child:  Text("Done",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                ) : GestureDetector(
                     onTap: (){
                       _controller.nextPage(duration: Duration(milliseconds: 500),
                           curve:Curves.easeIn );
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
