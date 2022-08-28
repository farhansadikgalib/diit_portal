import 'package:diit_portal/CustomWidgets/App_Bar/app_bar.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class QuestionBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      appBar: AppBarString,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child:  DefaultTextStyle(
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // GestureDetector(
                  //   onTap: () => Get.toNamed('/CseDepertment'),
                  //   child: Card(
                  //     elevation: 3,
                  //     shadowColor: Colors.orange,
                  //
                  //     child: Container(
                  //       height: MediaQuery.of(context).size.height/6,
                  //       width: MediaQuery.of(context).size.width/2.75,
                  //
                  //       child: Column(
                  //         children: [
                  //           Image.asset(
                  //             'assets/questions.png',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Text(
                  //             'CSE',
                  //             style: TextStyle(
                  //                 fontSize: 25,
                  //                 fontFamily: 'Baloo',
                  //                 fontWeight: FontWeight.w500),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height/4.6,
                    width: MediaQuery.of(context).size.width/2.50,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/CseDepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/questions.png',
                                height: MediaQuery.of(context).size.height/8.2,
                                width: MediaQuery.of(context).size.width/3,
                              ),
                           Text(
                                'CSE',
                                style: TextStyle(
                                  color: Colors.black45,
                                    fontSize: 25,
                                    fontFamily: 'Baloo',
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 18,),

                  // Card(
                  //   elevation: 3,
                  //   shadowColor: Colors.orange,
                  //   child: GestureDetector(
                  //     onTap: () => Get.toNamed('/BbaDepertment'),
                  //     child: Container(
                  //       height: MediaQuery.of(context).size.height/6,
                  //       width: MediaQuery.of(context).size.width/2.75,
                  //       child: Column(
                  //         children: [
                  //           Image.asset(
                  //             'assets/questions.png',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Text(
                  //             'BBA',
                  //             style: TextStyle(
                  //                 fontSize: 25,
                  //                 fontFamily: 'Baloo',
                  //                 fontWeight: FontWeight.w500),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/4.6,
                    width: MediaQuery.of(context).size.width/2.50,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/BbaDepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/questions.png',
                                height: MediaQuery.of(context).size.height/8.2,
                                width: MediaQuery.of(context).size.width/3,
                              ),
                              const Text(
                                'BBA',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 25,
                                    fontFamily: 'Baloo',
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Card(
                  //   elevation: 3,
                  //   shadowColor: Colors.orange,
                  //   child: GestureDetector(
                  //     onTap: () => Get.toNamed('/BthmDepertment'),
                  //     child: Container(
                  //       height: MediaQuery.of(context).size.height/6,
                  //       width: MediaQuery.of(context).size.width/2.75,
                  //
                  //       child: Column(
                  //         children: [
                  //           Image.asset(
                  //             'assets/questions.png',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Text(
                  //             'BTHM',
                  //             style: TextStyle(
                  //                 fontSize: 25,
                  //                 fontFamily: 'Baloo',
                  //                 fontWeight: FontWeight.w500),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height/4.6,
                    width: MediaQuery.of(context).size.width/2.50,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/BthmDepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/questions.png',
                                height: MediaQuery.of(context).size.height/8.2,
                                width: MediaQuery.of(context).size.width/3,
                              ),
                              const Text(
                                'BTHM',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 25,
                                    fontFamily: 'Baloo',
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 18,),

                  SizedBox(
                    height: MediaQuery.of(context).size.height/4.6,
                    width: MediaQuery.of(context).size.width/2.50,
                    child: NeumorphicButton(
                      onPressed: ()=> Get.toNamed('/MBADepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/questions.png',
                                height: MediaQuery.of(context).size.height/8.2,
                                width: MediaQuery.of(context).size.width/3,
                              ),
                              const Text(
                                'MBA',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 25,
                                    fontFamily: 'Baloo',
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),

                  // Card(
                  //   elevation: 3,
                  //   shadowColor: Colors.orange,
                  //   child: GestureDetector(
                  //     onTap: () => Get.toNamed('/MBADepertment'),
                  //     child: Container(
                  //       height: MediaQuery.of(context).size.height/6,
                  //       width: MediaQuery.of(context).size.width/2.75,
                  //
                  //       child: Column(
                  //         children: [
                  //           Image.asset(
                  //             'assets/questions.png',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Text(
                  //             'MBA',
                  //             style: TextStyle(
                  //                 fontSize: 25,
                  //                 fontFamily: 'Baloo',
                  //                 fontWeight: FontWeight.w500),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
