import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

class MBADepertment extends StatelessWidget {

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
                        RotateAnimatedText('MASTER'),
                        RotateAnimatedText('BUSINESS'),
                        RotateAnimatedText('ADMINISTRATION'),

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
              height: 20,
            ),
            Card(
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
                        "1st Semester",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                            fontFamily: 'Baloo'),
                      ),
                      GFButton(
                        size: 50,
                        color: Colors.green,
                        onPressed: () {
                          print('cse 1st');
                        },
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
            ),
            Card(
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
                        "2nd Semester",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                            fontFamily: 'Baloo'),
                      ),
                      GFButton(
                        size: 50,
                        color: Colors.green,
                        onPressed: () {
                          print('cse 1st');
                        },
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
            ),
           
          ],
        ),
      ),
    );
  }
}
