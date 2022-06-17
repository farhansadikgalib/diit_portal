import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';

class QuestionBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarString,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: DefaultTextStyle(
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                      fontFamily: "azonix",
                      fontWeight: FontWeight.bold),
                  child: Text("Select Your Department")
                  // AnimatedTextKit(
                  //   animatedTexts: [
                  //     WavyAnimatedText('Question Bank'),
                  //   ],
                  //   isRepeatingAnimation: true,
                  // ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/CseDepertment'),
                    child: Card(
                      elevation: 3,
                      shadowColor: Colors.orange,

                      child: Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/2.75,

                        child: Column(
                          children: [
                            Image.asset(
                              'assets/questions.png',
                              height: 100,
                              width: 100,
                            ),
                            Text(
                              'CSE',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Baloo',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: GestureDetector(
                      onTap: () => Get.toNamed('/BbaDepertment'),
                      child: Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/2.75,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/questions.png',
                              height: 100,
                              width: 100,
                            ),
                            Text(
                              'BBA',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Baloo',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
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
                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: GestureDetector(
                      onTap: () => Get.toNamed('/BthmDepertment'),
                      child: Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/2.75,

                        child: Column(
                          children: [
                            Image.asset(
                              'assets/questions.png',
                              height: 100,
                              width: 100,
                            ),
                            Text(
                              'BTHM',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Baloo',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Card(
                    elevation: 3,
                    shadowColor: Colors.orange,
                    child: GestureDetector(
                      onTap: () => Get.toNamed('/MBADepertment'),
                      child: Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/2.75,

                        child: Column(
                          children: [
                            Image.asset(
                              'assets/questions.png',
                              height: 100,
                              width: 100,
                            ),
                            Text(
                              'MBA',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Baloo',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
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
