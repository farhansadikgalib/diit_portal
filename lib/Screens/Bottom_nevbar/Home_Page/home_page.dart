import 'package:diit_portal/Screens/Weather/data_service.dart';
import 'package:diit_portal/Screens/Weather/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
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

  final _dataService = DataService();

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
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff00DCA8),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(5))),
                    height: 200,
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
                                  '${_response!.weatherInfo.description}',
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
                                      'Sunrise',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 52,
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
                                      'Sunset',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 56,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '06:50 PM',
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
                                      'Today’s Date',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
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
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Current  Time',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '${currentTime}',
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
                                      'Current  Temp',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
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
                Card(
                  child: Container(
                    height: 65.0,
                    color: Color(0xff3A95CB),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/calendar.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          width: 50,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      height: 200,
                      width: double.maxFinite,
                      child: GFCarousel(
                        autoPlay: true,
                        items: imageList.map(
                          (url) {
                            return Container(
                              margin: EdgeInsets.all(8.0),
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
                  ],
                ),
                Container(
                  height: 50,
          
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AnimatedButton(
                          height: 50,
                          width: 160,
                          text: 'STUDENT PROTAL',
                          textStyle: (TextStyle(fontSize: 16,fontFamily: "Poppins",fontWeight: FontWeight.w400,color: Colors.white)),
                          isReverse: true,
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                          backgroundColor: Colors.purpleAccent,
                          borderColor: Colors.black38,
                          borderRadius: 10,
                          borderWidth: 2,
                          onPress: () {  },
                        ),
                        SizedBox(width: 10,),
                        AnimatedButton(
                          height: 50,
                          width: 160,
                          text: 'TUTION FEES',
                          textStyle: (TextStyle(fontSize: 16,fontFamily: "Poppins",fontWeight: FontWeight.w400,color: Colors.white)),
                          isReverse: true,
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                          backgroundColor: Colors.purpleAccent,
                          borderColor: Colors.black38,
                          borderRadius: 10,
                          borderWidth: 2,
                          onPress: () {  },
                        ),
                        SizedBox(width: 10,),
                        AnimatedButton(
                          height: 50,
                          width: 160,
                          text: 'FACULTY MEMBER',
                          textStyle: (TextStyle(fontSize: 16,fontFamily: "Poppins",fontWeight: FontWeight.w400,color: Colors.white)),
                          isReverse: true,
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                          backgroundColor: Colors.purpleAccent,
                          borderColor: Colors.black38,
                          borderRadius: 10,
                          borderWidth: 2,
                          onPress: ()=>Get.toNamed('/FacultyProfile'),
                        ),
                        SizedBox(width: 10,),
                        AnimatedButton(
                          height: 50,
                          width: 160,
                          text: 'ACADEMIC RESULT',
                          textStyle: (TextStyle(fontSize: 16,fontFamily: "Poppins",fontWeight: FontWeight.w400,color: Colors.white)),
                          isReverse: true,
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                          backgroundColor: Colors.purpleAccent,
                          borderColor: Colors.black38,
                          borderRadius: 10,
                          borderWidth: 2,
                          onPress: () {  },
                        ),
                        SizedBox(width: 10,),
                        AnimatedButton(
                          height: 50,
                          width: 160,
                          text: 'NU PROTAL',
                          textStyle: (TextStyle(fontSize: 16,fontFamily: "Poppins",fontWeight: FontWeight.w400,color: Colors.white)),
                          isReverse: true,
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                          backgroundColor: Colors.purpleAccent,
                          borderColor: Colors.black38,
                          borderRadius: 10,
                          borderWidth: 2,
                          onPress: () {  },
                        ),
                        SizedBox(width: 10,),
                        AnimatedButton(
                          height: 50,
                          width: 160,
                          text: 'DIIT NOTICS',
                          textStyle: (TextStyle(fontSize: 16,fontFamily: "Poppins",fontWeight: FontWeight.w400,color: Colors.white)),
                          isReverse: true,
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                          backgroundColor: Colors.purpleAccent,
                          borderColor: Colors.black38,
                          borderRadius: 10,
                          borderWidth: 2,
                          onPress: () {  },
                        ),
                      ],
                    ),
                  ) ,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
               mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 160,
                      child: InkWell(
                        onTap: ()=>Get.toNamed('/QuestionBank'),
                        child: Card(
                          elevation: 5,
                          color: Color(0xffF8EFEF),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Image.asset("assets/ic_questionbank.png",height: 100,width: 100,),
                              SizedBox(height: 10,),
                              Text( "Question Bank",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150,
                      height: 160,
                      child: InkWell(
                        onTap: ()=>Get.toNamed('/ClassRoutine'),
                        child: Card(
                          elevation: 5,
                          color: Color(0xffF8EFEF),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Image.asset("assets/ic_routine.png",height: 100,width: 100,),
                              SizedBox(height: 10,),
                              Text( "Class  Routine",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
               mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 160,
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          elevation: 5,
                          color: Color(0xffF8EFEF),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Image.asset( "assets/ic_club.png",height: 100,width: 100,),
                              SizedBox(height: 10,),
                              Text( "Club",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 150,
                      height: 160,
                      child: InkWell(
                        onTap: ()=>Get.toNamed('/TakeandShowAttendence'),
                        child: Card(
                          elevation: 5,
                          color: Color(0xffF8EFEF),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Image.asset("assets/ic_attendance.png",height: 100,width: 100,),
                              SizedBox(height: 10,),
                              Text( "Attendence",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 160,
                  child: InkWell(
                    onTap: ()=>Get.toNamed('/QuickPayment'),
                    child: Card(
                      elevation: 5,
                      color: Color(0xffF8EFEF),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/payment.png",height: 100,width: 100,),
                          SizedBox(height: 10,),
                          Text( "Quick Pay",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
