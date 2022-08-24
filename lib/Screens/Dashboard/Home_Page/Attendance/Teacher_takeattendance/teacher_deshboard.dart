import 'dart:convert';

import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeacherDashbord extends StatefulWidget {
  @override
  State<TeacherDashbord> createState() => _TeacherDashbordState();
}

class _TeacherDashbordState extends State<TeacherDashbord> {
  TextEditingController _createNotification = TextEditingController();
  static const String oneSignalId = "6d6a341b-9a0c-4637-9ba7-fd600bff21a0";

  String user_email = '';
  String user_id = '';

  Future _signOut() async {
    await FirebaseAuth.instance.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('login', true);
    });
    Get.offAndToNamed('/LoginPage');
  }

  @override
  void initState() {
    super.initState();
    // email =user_email!;
    getUserData();
    intitPlatformState();
  }

  getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_email = prefs.getString('user_email')!;
      user_id = prefs.getString('user_id')!;
    });
    print(user_email);
    // return user_email;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _createNotification;
  }

  Future<void> intitPlatformState() async {
    OneSignal.shared.setAppId(oneSignalId);
  }

  Future sendNotification(
      List<String> tokenIdList, String contents, String heading) async {
    return await post(
      Uri.parse('https://onesignal.com/api/v1/notifications'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "app_id": "6d6a341b-9a0c-4637-9ba7-fd600bff21a0",
        //kAppId is the App Id that one get from the OneSignal When the application is registered.

        "include_player_ids": "",
        //tokenIdList Is the List of All the Token Id to to Whom notification must be sent.

        // android_accent_color reprsent the color of the heading text in the notifiction
        "android_accent_color": "FF9976D2",

        "small_icon": "ic_stat_onesignal_default",

        "large_icon":
            "https://www.filepicker.io/api/file/zPloHSmnQsix82nlj9Aj?filename=name.jpg",

        "headings": {"en": "DIIT Portal"},

        "contents": {"en": "Notification Send"},
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color(0xffc2caec),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Poly Bhumick',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins_B"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lecturer of CSE',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.orangeAccent,
                            fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   width: 150.w,
                  //   height: 160.h,
                  //   child: InkWell(
                  //     onTap: ()=>Get.toNamed('/SelectCourceAttendence'),
                  //     child: Card(
                  //       elevation: 5,
                  //       color: Color(0xffF8EFEF),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Image.asset("assets/ic_attendance.png",height: 100,width: 100,),
                  //           SizedBox(height: 10,),
                  //           Text( "Take Attendence",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 2.30,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/SelectCourceAttendence'),
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
                            "assets/ic_attendance.png",
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Take Attendence",
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

                  const SizedBox(
                    width: 15,
                  ),
                  // Container(
                  //   width: 150.w,
                  //   height: 160.h,
                  //   child: InkWell(
                  //     onTap: ()=>Get.toNamed('/CourseAttendanceView'),
                  //     child: Card(
                  //       elevation: 5,
                  //       color: Color(0xffF8EFEF),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Image.asset("assets/viewattendence.png",color: Colors.orange,height: 100,width: 100,),
                  //           SizedBox(height: 10,),
                  //           Text( "View Attendence",
                  //             style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 2.30,
                    child: NeumorphicButton(
                      onPressed: () => Get.toNamed('/CourseAttendanceView'),
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
                            "assets/viewattendence.png",
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 3,
                            color: Colors.orangeAccent,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "View Attendence",
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: TextFormField(
                  controller: _createNotification,
                  maxLines: 4,
                  maxLength: 200,
                  cursorHeight: 20,
                  autofocus: false,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    hintText: 'Create Notification',
                    suffixIcon: IconButton(
                      onPressed: () {
                        Get.snackbar('Notification', "Sent Successfully",
                            backgroundColor: Colors.black12,
                            snackPosition: SnackPosition.TOP,
                            messageText: const Text(
                              'Done',
                              style: TextStyle(fontSize: 16),
                            ),
                            titleText: const Text(
                              'Notification',
                              style: TextStyle(fontSize: 18),
                            ));

                        String content = _createNotification.text.trim();
                        setState(() {
                          sendNotification([], content, "heading");
                          print(_createNotification);
                        });
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.orange,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Column(
                children: [
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 22,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Setting',
                              style: TextStyle(fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 22,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Help & Support',
                              style: TextStyle(fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 22,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () => _signOut(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Logout',
                              style: TextStyle(fontSize: 16),
                            ),
                            Icon(
                              Icons.logout,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
