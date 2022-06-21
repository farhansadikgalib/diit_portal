import 'package:diit_portal/Screens/Weather/data_service.dart';
import 'package:diit_portal/Screens/Weather/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:getwidget/getwidget.dart';

import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    weatherService();
  }

  WeatherResponse? _response;

  DataService _dataService = DataService();

  bool buttonselect = false;
  bool buttonbackcolor = true;

  dynamic todaysDate = DateFormat('dd MMMM yyyy').format(DateTime.now());
  dynamic currentTime = DateFormat.jm().format(DateTime.now());
  dynamic todaysWeeklyName = DateFormat('EEEE').format(DateTime.now());

  final List<String> imageList = [
    "assets/slider_image/banner.png",
    "assets/slider_image/banner2.jpg",
    "assets/slider_image/banner3.jpg",
    "assets/slider_image/banner4.png",
  ];

  final List<String> StudentProtalButton = [
    'STUDENT PORTAL',
    'TUTION FEES',
    'FACULTUY MEMBER',
    'ACADEMIC RESULT',
    'NU PORTAL',
    'DIIT NOTICS',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 3,
                  shadowColor: Color(0xff00DCA8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff00DCA8),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(5))),
                    height: 125.h,
                    width: double.maxFinite,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                child: Text(
                                  '${_response?.weatherInfo.description.toUpperCase()}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Sunrise'.toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '05:35 AM',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Sunset'.toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                       '  06:44 PM',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      "Today's Temp".toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 32.h,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      "${(((_response!.tempInfo.temperature - 32) * 5) / 9).ceil()}° C",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Today’s  Date'.toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '${todaysDate}',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Image.network(
                              _response!.iconUrl,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Card(
                //   elevation: 3,
                //   shadowColor: Colors.orange,
                //   child: Clock(),
                //
                // ),
                Card(
                  elevation: 3,
                  shadowColor: Colors.orange,
                  child: Container(
                    height: 65.0.h,
                    color: Colors.orangeAccent,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/calendar.png',
                            height: 50.h,
                            width: 50.w,
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${todaysWeeklyName}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "You’ve No Class Today",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: GFCarousel(
                    autoPlay: true,
                    items: imageList.map(
                      (url) {
                        return Container(
                           margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 10),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image.asset(url,
                                fit: BoxFit.cover, width: double.maxFinite),
                          ),
                        );
                      },
                    ).toList(),
                    onPageChanged: (index) {
                      setState(() {
                        index;
                      });
                    },
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AnimatedButton(
                        height: 45.h,
                        width: 125.w,
                        text: 'STUDENT PROTAL',
                        textStyle: (TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                        backgroundColor: Color(0xff00DCA8),
                        borderColor: Colors.orangeAccent,
                        borderRadius: 10,
                        borderWidth: 2,
                        onPress: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      AnimatedButton(
                        height: 45.h,
                        width: 125.w,
                        text: 'TUTION FEES',
                        textStyle: (TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                        backgroundColor: Color(0xff00DCA8),
                        borderColor: Colors.orangeAccent,
                        borderRadius: 10,
                        borderWidth: 2,
                        onPress: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      AnimatedButton(
                        height: 45.h,
                        width: 125.w,
                        text: 'FACULTY MEMBER',
                        textStyle: (TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                        backgroundColor: Color(0xff00DCA8),
                        borderColor: Colors.orangeAccent,
                        borderRadius: 10,
                        borderWidth: 2,
                        onPress: () => Get.toNamed('/FacultyProfile'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AnimatedButton(
                        height: 45.h,
                        width: 125.w,
                        text: 'ACADEMIC RESULT',
                        textStyle: (TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                        backgroundColor: Color(0xff00DCA8),
                        borderColor: Colors.orangeAccent,
                        borderRadius: 10,
                        borderWidth: 2,
                        onPress: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      AnimatedButton(
                        height: 45.h,
                        width: 125.w,
                        text: 'NU PROTAL',
                        textStyle: (TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                        backgroundColor: Color(0xff00DCA8),
                        borderColor: Colors.orangeAccent,
                        borderRadius: 10,
                        borderWidth: 2,
                        onPress: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      AnimatedButton(
                        height: 45.h,
                        width: 125.w,
                        text: 'DIIT NOTICS',
                        textStyle: (TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                        backgroundColor: Color(0xff00DCA8),
                        borderColor: Colors.orangeAccent,
                        borderRadius: 10,
                        borderWidth: 2,
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Get.toNamed('/QuestionBank'),
                      child: Card(
                        elevation: 5,
                        color: Color(0xffF8EFEF),
                        child: Container(
                          width: 150.w,
                          height: 140.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/ic_questionbank.png",
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Question Bank",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed('/ClassRoutine'),
                      child: Card(
                        elevation: 5,
                        color: Color(0xffF8EFEF),
                        child: Container(
                          width: 150.w,
                          height: 140.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/ic_routine.png",
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Class  Routine",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/4.6,
                      width: MediaQuery.of(context).size.width/2.50,
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
                        child: Column(
                            children: [
                              Image.asset(
                                "assets/ic_club.png",
                                height: MediaQuery.of(context).size.height/8.2,
                                width: MediaQuery.of(context).size.width/3,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Club",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300),
                              ),
                            ]
                        ),
                      ),

                    ),
                    //delet kora jabe na
                    // delete kora jabe na ei khane file comment kora
                    // InkWell(
                    //     onTap: () {},
                    //     child: Card(
                    //       elevation: 5,
                    //       color: Color(0xffF8EFEF),
                    //       child: Container(
                    //         width: 150.w,
                    //         height: 140.h,
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "assets/ic_club.png",
                    //               height: 100,
                    //               width: 100,
                    //             ),
                    //             SizedBox(
                    //               height: 10.h,
                    //             ),
                    //             Text(
                    //               "Club",
                    //               style: TextStyle(
                    //                   fontFamily: "Poppins",
                    //                   fontSize: 15,
                    //                   color: Colors.black,
                    //                   fontWeight: FontWeight.w300),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // delete kora jabe na ei khane file comment kora

                    SizedBox(
                      width: 10.h,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/4.6,
                      width: MediaQuery.of(context).size.width/2.50,
                      child: NeumorphicButton(
                        onPressed: () => Get.toNamed('/TakeandShowAttendence'),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12)),
                            depth: 6,
                            lightSource: LightSource.topLeft,
                            color: Colors.white),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/ic_attendance.png",
                                  height: MediaQuery.of(context).size.height/8.2,
                                  width: MediaQuery.of(context).size.width/3,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Attendence",
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

                    // delet kora jabe na
                    // delete kora jabe na ei khane file comment kora
                    // InkWell(
                    //   onTap: () => Get.toNamed('/TakeandShowAttendence'),
                    //   child: Card(
                    //     elevation: 5,
                    //     color: Color(0xffF8EFEF),
                    //     child: Container(
                    //       width: 150.w,
                    //       height: 140.h,
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Image.asset(
                    //             "assets/ic_attendance.png",
                    //             height: 100,
                    //             width: 100,
                    //           ),
                    //           SizedBox(
                    //             height: 10.h,
                    //           ),
                    //           Text(
                    //             "Attendence",
                    //             style: TextStyle(
                    //                 fontFamily: "Poppins",
                    //                 fontSize: 15,
                    //                 color: Colors.black,
                    //                 fontWeight: FontWeight.w300),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // delete kora jabe na ei khane file comment kora
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/2.50,
                  child: NeumorphicButton(
                    onPressed: () => Get.toNamed('/QuickPayment'),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 6,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/payment.png",
                              height: MediaQuery.of(context).size.height/8.2,
                              width: MediaQuery.of(context).size.width/3,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Quick Pay",
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
                // quick payment //

                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void weatherService() async {
    final response = await _dataService.getWeather("Dhaka");
    setState(() => _response = response);
  }
}
