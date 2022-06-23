import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CseDepertment extends StatefulWidget {
  @override
  State<CseDepertment> createState() => _CseDepertmentState();
}

class _CseDepertmentState extends State<CseDepertment> {
  final List semestername = [
    "1st Semester",
    "2nd Semester",
    "3rd Semester",
    "4th Semester",
    "5th Semester",
    "6th Semester",
    "7th Semester",
    "8th Semester",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarString,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Depertment Of CSE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Baloo',
                      fontWeight: FontWeight.bold),
                ),
      // SizedBox(height: 80,),
      // SizedBox(
      //
      //   width: 200.0,
      //   child: DefaultTextStyle(
      //     style: const TextStyle(
      //       fontSize: 20.0,
      //       fontFamily: 'Baloo',
      //       color: Colors.black,
      //       fontWeight: FontWeight.bold,
      //
      //     ),
      //     child: AnimatedTextKit(
      //       animatedTexts: [
      //         RotateAnimatedText('COMPUTER'),
      //         RotateAnimatedText('SCIENCE'),
      //         RotateAnimatedText('ENGINEERING'),
      //
      //       ],
      //     ),
      //   ),
    //  ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: semestername.length,
                    itemBuilder: (BuildContext context,int index){
                  return Card(
                    elevation: 3,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.orange, width: 4),
                          left: BorderSide(color: Colors.orange, width: 4),
                          right: BorderSide(color: Colors.orange, width: 4),
                          bottom: BorderSide(color: Colors.orange, width: 4),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${semestername[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontFamily: 'Baloo'),
                            ),
                            GFButton(
                              size: 50,
                              color: Colors.green,
                              onPressed: () =>Get.toNamed('/pdf_viewPage'),
                              text: "Download",
                              textStyle: TextStyle(
                                fontSize: 18,
                              ),
                              position: GFPosition.end,
                              icon: Icon(
                                Icons.arrow_downward_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                              type: GFButtonType.solid,
                              shape: GFButtonShape.standard,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
