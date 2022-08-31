
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class Exam extends StatefulWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 2.30,
            child: NeumorphicButton(
              onPressed: () => Get.toNamed('/Exam_Course'),
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
                  Image.asset(
                    "assets/exammark.png",
                    height: MediaQuery.of(context).size.height / 8.2,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Exam Marks",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 2.30,
            child: NeumorphicButton(
              onPressed: () => Get.toNamed('/TeacherViewAttendance'),
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
                  Image.asset(
                    "assets/exammark.png",
                    height: MediaQuery.of(context).size.height / 8.2,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Exam Marks",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 2.30,
            child: NeumorphicButton(
              onPressed: () => Get.toNamed('/TeacherViewAttendance'),
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
                  Image.asset(
                    "assets/exammark.png",
                    height: MediaQuery.of(context).size.height / 8.2,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Exam Marks",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 2.30,
            child: NeumorphicButton(
              onPressed: () => Get.toNamed('/TeacherViewAttendance'),
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
                  Image.asset(
                    "assets/exammark.png",
                    height: MediaQuery.of(context).size.height / 8.2,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Exam Marks",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
