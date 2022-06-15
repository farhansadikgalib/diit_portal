import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getwidget/getwidget.dart';

class BthmDepertment extends StatelessWidget {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 15),
                  child: Text(
                    "Depertment",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Baloo',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 80,),
                SizedBox(

                  width: 200.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Baloo',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('BACHELOR'),
                        RotateAnimatedText('TOURISM'),
                        RotateAnimatedText('HOSPITALITY'),
                        RotateAnimatedText('MANAGEMENT'),

                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                          height: 70,
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
                                      fontSize: 19,
                                      fontFamily: 'Baloo'),
                                ),
                                GFButton(
                                  size: 50,
                                  color: Colors.green,
                                  onPressed: () =>Get.toNamed('/pdf_viewPage'),
                                  text: "Download",
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                  position: GFPosition.end,
                                  icon: Icon(
                                    Icons.arrow_downward_outlined,
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
