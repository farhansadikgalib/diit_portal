import 'package:diit_portal/CustomWidgets/App_Bar/app_bar.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class QuestionBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      appBar: AppBar(
        backgroundColor: ColorChanger.appbarColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Question Bank',
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "azonix",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child:  Text("Select Your Department",    style: TextStyle(
                  color: Colors.white70,
                  fontSize: 25,
                  fontFamily: 'Baloo',
                  fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: Get.height /5,
                    width: Get.width / 2.5,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/CseDepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          color: Colors.white24),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/paper.png',
                                height: Get.height/8.5,
                                width: Get.width/5,
                              ),
                           Text(
                                'CSE',
                                style: TextStyle(
                                  color: Colors.white,
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
                    height: Get.height /5,
                    width: Get.width / 2.5,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/BbaDepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          color: Colors.white24),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/paper.png',
                                height: Get.height/8.5,
                                width: Get.width/5,
                              ),
                              const Text(
                                'BBA',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'Baloo',
                                      fontWeight: FontWeight.w500)
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
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SizedBox(
                    height: Get.height /5,
                    width: Get.width / 2.5,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/BthmDepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          color: Colors.white24),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/paper.png',
                                height: Get.height/8.5,
                                width: Get.width/5,
                              ),
                              const Text(
                                'BTHM',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'Baloo',
                                      fontWeight: FontWeight.w500)
                              )
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 18,),

                  SizedBox(
                    height: Get.height /5,
                    width: Get.width / 2.5,
                    child: NeumorphicButton(
                      onPressed: ()=> Get.toNamed('/MBADepertment'),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 1,
                          color: Colors.white24),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/paper.png',
                                height: Get.height/8.5,
                                width: Get.width/5,
                              ),
                              const Text(
                                'MBA',
                                style: TextStyle(
                                    color: Colors.white,
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
          ],
        ),
      ),
    );
  }
}
