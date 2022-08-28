
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ITClube extends StatefulWidget {
  const ITClube({Key? key}) : super(key: key);

  @override
  State<ITClube> createState() => _ITClubeState();
}


class _ITClubeState extends State<ITClube> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
       backgroundColor: ColorChanger.scaffoldcolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4.6,
                  width: MediaQuery.of(context).size.width / 2.50,
                  child: NeumorphicButton(
                    onPressed:()=>Get.toNamed('/Helping_Birds'),

                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 1,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: Column(
                        children: [
                      Image.asset(
                        "assets/club_icons/helping_birds.png",
                        height:
                        MediaQuery.of(context).size.height / 8.2,
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                        "Helping Birds",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.w300),
                      ),
                    ]),
                  ),
                ),

                SizedBox(
                  width: 10.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4.6,
                  width: MediaQuery.of(context).size.width / 2.50,
                  child: NeumorphicButton(
                    // onPressed: () =>
                    //     Get.toNamed('/StudentViewAttendance'),
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
                              "assets/club_icons/programming.png",
                              height:
                              MediaQuery.of(context).size.height /
                                  8.2,
                              width:
                              MediaQuery.of(context).size.width /
                                  3,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Text(
                              "programmer",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}
