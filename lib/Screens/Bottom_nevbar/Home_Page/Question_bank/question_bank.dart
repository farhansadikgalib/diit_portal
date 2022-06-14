import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionBank extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarString,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(

            children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: DefaultTextStyle(
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.black,
                  fontFamily: "azonix",
                  fontWeight: FontWeight.bold),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Question Bank'),
                ],
                isRepeatingAnimation: true,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(

            padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>Get.toNamed('/CseDepertment'),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20)),
                        color: Color(0xc2f2d4e8),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Colors.black38,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset('assets/questions.png',height: 100,width: 100,),
                        Text('CSE',style: TextStyle(fontSize: 25,fontFamily: 'Baloo',fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                  onTap: ()=>Get.toNamed('/BbaDepertment'),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color(0xc2f2d4e8),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-5, 5),
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Colors.black38,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset('assets/questions.png',height: 100,width: 100,),
                        Text('BBA',style: TextStyle(fontSize: 25,fontFamily: 'Baloo',fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: ()=>Get.toNamed('/BthmDepertment'),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(20)),
                        color: Color(0xc2f2d4e8),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, -5),
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Colors.black38,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset('assets/questions.png',height: 100,width: 100,),
                        Text('BTHM',style: TextStyle(fontSize: 25,fontFamily: 'Baloo',fontWeight: FontWeight.w500),)
                      ],
                    ),

                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                  onTap: ()=>Get.toNamed('/MBADepertment'),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(20)),
                        color: Color(0xc2f2d4e8),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-5, -5),
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Colors.black38,
                          ),
                        ]
                    ),
                      child: Column(
                        children: [
                          Image.asset('assets/questions.png',height: 100,width: 100,),
                          Text('MBA',style: TextStyle(fontSize: 25,fontFamily: 'Baloo',fontWeight: FontWeight.w500),)
                        ],
                      ),

                    ),
                  ),

              ],
            ),
          ),
              SizedBox(height: 25,),
        ],
        ),

      ),
    );
  }
}
