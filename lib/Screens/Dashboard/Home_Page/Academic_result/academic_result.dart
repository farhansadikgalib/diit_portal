import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class AcademicResult extends StatefulWidget {


  @override
  State<AcademicResult> createState() => _AcademicResultState();
}

class _AcademicResultState extends State<AcademicResult> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        appBar: AppBar(title:   Text(
          "Result Type",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize:25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
          backgroundColor: ColorChanger.scaffoldcolor,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 50,),

              SizedBox(
                height: Get.height / 5,
                width: Get.width / 2.30,
                child: NeumorphicButton(
                  onPressed: () => Get.toNamed('/ClassText'),
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 4,
                      lightSource: LightSource.topLeft,
                      color: Colors.white30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/view_exam.png",
                        height: Get.height / 8.2,
                        width: Get.width / 3,
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
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                height: Get.height / 5,
                width: Get.width / 2.30,
                child: NeumorphicButton(
                  onPressed: () => Get.toNamed('/MidTerm'),
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 4,
                      lightSource: LightSource.topLeft,
                      color: Colors.white30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/view_exam.png",
                        height: Get.height / 8.2,
                        width: Get.width / 3,
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
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                height: Get.height / 5,
                width: Get.width / 2.30,
                child: NeumorphicButton(
                  onPressed: () => Get.toNamed('/InternalFinal'),
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 4,
                      lightSource: LightSource.topLeft,
                      color: Colors.white30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/view_exam.png",
                        height: Get.height / 8.2,
                        width: Get.width / 3,
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
                            fontWeight: FontWeight.w600),
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
    );

  }
}
