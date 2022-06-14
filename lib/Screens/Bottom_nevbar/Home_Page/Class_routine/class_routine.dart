import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ClassRoutine extends StatelessWidget {
  const ClassRoutine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarString,
      body:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
           width: 250.0,
           child: DefaultTextStyle(
             style: const TextStyle(
               fontSize: 40.0,
               fontWeight: FontWeight.bold,
               color: Colors.lightGreen
             ),
             child: AnimatedTextKit(
               animatedTexts: [
                 TyperAnimatedText('Class Routine'),
               ],
             ),
           ),
         ),
            

            Padding(
              padding: const EdgeInsets.only(top: 50,right: 200),
              child: GestureDetector(

                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(200))
                  ),
                  child: Text("CSE",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 200,top: 10),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width:200,

                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200))
                ),
                child: Text("BBA",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 200),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 200,

                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(200))
                ),
                child: Text("BTHM",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 200,top: 10),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width:200,

                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200))
                ),
                child: Text("MBA",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),

    );
  }
}
