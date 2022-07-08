import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class ClassRoutine extends StatelessWidget {
  const ClassRoutine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarString,
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Class Routine'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 80.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2.30,
                child: NeumorphicButton(
                  onPressed: ()=>Get.toNamed('/CSERoutine'),
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 6,
                      lightSource: LightSource.topLeft,
                      color: Colors.white),
                  child: const Center(
                      child: Text(
                        "CSE",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2.30,
                child: NeumorphicButton(
                  onPressed: () {
                    print('neumorphic Btn');
                  },
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 6,
                      lightSource: LightSource.topLeft,
                      color: Colors.white),
                  child: const Center(
                      child: Text(
                        "BBA",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2.30,
                child: NeumorphicButton(
                  onPressed: () {
                    print('neumorphic Btn');
                  },
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 6,
                      lightSource: LightSource.topLeft,
                      color: Colors.white),
                  child: const Center(
                      child: Text(
                        "BTHM",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2.30,
                child: NeumorphicButton(
                  onPressed: () {
                    print('neumorphic Btn');
                  },
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 6,
                      lightSource: LightSource.topLeft,
                      color: Colors.white),
                  child: const Center(
                      child: Text(
                        "MBA",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
