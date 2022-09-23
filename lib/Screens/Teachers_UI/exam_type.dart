import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class ExamType extends StatefulWidget {
  const ExamType({Key? key}) : super(key: key);

  @override
  State<ExamType> createState() => _ExamTypeState();
}

class _ExamTypeState extends State<ExamType> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        appBar: AppBar(
          backgroundColor: ColorChanger.appbarColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Exam Type',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "azonix",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [

          SizedBox(height: 50,),

                SizedBox(
                  height: Get.height / 5,
                  width: Get.width / 2.30,
                  child: NeumorphicButton(
                    onPressed: () => Get.toNamed('/exam_marks'),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 3,
                        lightSource: LightSource.topLeft,
                        color: ColorChanger.scaffoldcolor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/exammark.png",
                          height: MediaQuery.of(context).size.height / 8.2,
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Class Test",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2.30,
                  child: NeumorphicButton(
                    onPressed: () => Get.toNamed('/exam_marks'),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 3,
                        lightSource: LightSource.topLeft,
                        color: ColorChanger.scaffoldcolor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/exammark.png",
                          height: MediaQuery.of(context).size.height / 8.2,
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Text(
                          "Mid Term",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2.30,
                  child: NeumorphicButton(
                    onPressed: () => Get.toNamed('/exam_marks'),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 3,
                        lightSource: LightSource.topLeft,
                        color: ColorChanger.scaffoldcolor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/exammark.png",
                          height: MediaQuery.of(context).size.height / 8.2,
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Internal Final",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
