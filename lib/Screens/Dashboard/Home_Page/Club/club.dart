
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class All_Clubs extends StatefulWidget {
  const All_Clubs({Key? key}) : super(key: key);

  @override
  State<All_Clubs> createState() => _All_ClubsState();
}


class _All_ClubsState extends State<All_Clubs> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
       backgroundColor: ColorChanger.scaffoldcolor,
        appBar: AppBar(
          backgroundColor: ColorChanger.appbarColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Club',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "azonix",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(
                  height: Get.height /5,
                  width: Get.width / 2.5,
                  child: NeumorphicButton(
                    onPressed:()=>Get.toNamed('/Helping_Birds'),

                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 0,
                        color: Colors.white24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Image.asset(
                        "assets/club_icons/helping_birds.png",
                        height:
                        Get.height / 10,
                        width: Get.width / 5,
                      ),

                      const Text(
                        "Helping Birds",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.white70,
                            fontWeight: FontWeight.w300),
                      ),
                    ]),
                  ),
                ),

                SizedBox(
                  width: 10.h,
                ),
                SizedBox(
                  height: Get.height /5,
                  width: Get.width / 2.5,
                  child: NeumorphicButton(
                    onPressed: () {},
                        // Get.toNamed('/AttendanceTake'),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 0,
                        color: Colors.white24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image.asset(
                          "assets/club_icons/programming.png",
                          height:
                          Get.height / 10,
                          width: Get.width / 5,
                        ),

                        const Text(
                          "Programming Club",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.white70,
                              fontWeight: FontWeight.w300),
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
