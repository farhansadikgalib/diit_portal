import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/BinaryClock/Clock.dart';
import 'package:diit_portal/Screens/Dashboard/Notification/Notification_Service.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:diit_portal/Screens/Weather/data_service.dart';
import 'package:diit_portal/Screens/Weather/weather_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:getwidget/getwidget.dart';

import 'package:intl/intl.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    weatherService();
    intitPlatformState();
    getWeather();
    initFirestoreData();
    FCM();
    getCurrentUser();
    _setUserData();

  }

  static const String oneSignalId = "6d6a341b-9a0c-4637-9ba7-fd600bff21a0";
  late CollectionReference ref;
  String sec= 'A';
  //community url

  final Uri _url = Uri.parse('https://chat.whatsapp.com/G3SiHAapFJH4DaThU1ngW7');

  // community url


//weather
  WeatherResponse? _response;

  var min,max;

  Future getWeather() async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=dhaka&units=metric&appid=a17c1d48df0e47e968f31a998ec25ab4'));

    var showData = jsonDecode(response.body);

    setState(() {
      this.min = showData['main']['temp_min'];
      this.max = showData['main']['temp_max'];
    });
  }





  //
  // Future getSunriseSunset() async {
  //   final collectdata = await http.get(Uri.parse(
  //       'https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400'));
  //
  //   var sunrise_sunsetArray = jsonDecode(collectdata.body);
  //
  //   setState(() {
  //     this.sunrise = sunrise_sunsetArray['results']['sunrise'];
  //     this.sunset = sunrise_sunsetArray['results']['sunset'];
  //   });
  // }
//weather
  final DataService _dataService = DataService();

  bool buttonselect = false;
  bool buttonbackcolor = true;

  dynamic todaysDate = DateFormat("dd MMM yy").format(DateTime.now());
  dynamic currentTime = DateFormat.jm().format(DateTime.now());
  String todaysWeeklyName = DateFormat('EEEE').format(DateTime.now());

  late var temp = (((_response?.tempInfo.temperature)! - 32) * 5) / 9;

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

  //Firebase

  Future<void> initFirestoreData() async{
    ref = FirebaseFirestore.instance
        .collection("ClassRoutine")
        .doc('Department')
        .collection('CSE')
        .doc('17')
        .collection('Section')
        .doc(sec)
        .collection('Day')
        .doc('Saturday')
        .collection('ClassList');

}


  final FirebaseAuth _auth = FirebaseAuth.instance;
  var uid,uemail,uname ;
  getCurrentUser() async {
    final User? user = _auth.currentUser;
     uid = user!.uid;
     uemail = user.email;
      // uname = user.displayName;
    print(uid);
    print(uemail);
  }

  final firestoreInstance = FirebaseFirestore.instance;

   _setUserData() async{
     SharedPreferences prefs = await SharedPreferences.getInstance();

     // String  user_email = prefs.getString('user_email')!;
      user_id = prefs.getString('user_id')!;
      user_department = prefs.getString('department')!;
      user_batch = prefs.getString('batch')!;
      user_section = prefs.getString('section')!;

    var firebaseUser = await FirebaseAuth.instance.currentUser!;
    firestoreInstance.collection("user_data").doc(firebaseUser.uid).set(
        {
          "name" : "$uname",
          "id" : "$uid",
          "email" : "$uemail",
          "department":"$user_department",
          "batch":"$user_batch",
          "section":"$user_section",
          "class_id":"$user_id"


        }).then((_){
      print("success!");
    });
  }


  //Firebase

  Future<void> intitPlatformState() async {
    OneSignal.shared.setAppId(oneSignalId);
  }

  void weatherService() async {
    final response = await _dataService.getWeather("Dhaka");
    setState(() => _response = response);
  }

//Shared Preference Data
  String user_email = '';
  String user_id = '';
  String user_department = '';
  String user_batch = '';
  String user_section = '';

  _sharedPreferencesGetData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
  }


//Shared Preference Data


  @override
  Widget build(BuildContext context) {


    return FutureBuilder<QuerySnapshot>(
      future: ref.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SafeArea(
            child: Scaffold(
               backgroundColor:  ColorChanger.scaffoldcolor,
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),

                      Card(
                        elevation: 3,
                        shadowColor: Color(0xff00DCA8),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff00DCA8),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5))),
                          height: Get.height/4,
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 8, left: 15),
                                      child: Text(
                                        '${_response?.weatherInfo.description.toUpperCase()}',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),

                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: 8, left: 15),
                                          child: Text(
                                            "Max Temp".toUpperCase(),
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: 8, left: 15),
                                          child: Text(
                                            max != null
                                                ? "${max.ceil()+3}° C"
                                                : '36° C',
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
                                              EdgeInsets.only(top: 8, left: 15),
                                          child: Text(
                                            "min temp  ".toUpperCase(),
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: 8, left: 15),
                                          child: Text(
                                            min != null
                                                ? "${min.ceil()-2}° C"
                                                : '29° C',
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
                                          EdgeInsets.only(top: 8, left: 15),
                                          child: Text(
                                            "Current Temp".toUpperCase(),
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 0.h,
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(top: 8, left: 15),
                                          child: Text(
                                            "${temp.ceil()}° C",
                                            style: const TextStyle(
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
                                              EdgeInsets.only(top: 8, left: 15),
                                          child: Text(
                                            'Today’s  Date'.toUpperCase(),
                                            style:  TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: 8, left: 11),
                                          child: Text(
                                            '$todaysDate',
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,)

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
                      SizedBox(
                        height: 5,
                      ),
                      // Card(
                      //   elevation: 3,
                      //   shadowColor: Colors.orange,
                      //   child: Clock(),
                      // ),

                      SizedBox(height: 5,),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/${todaysWeeklyName}');
                          print(todaysWeeklyName);
                        },

                        child: Card(
                          elevation: 3,
                          shadowColor: Colors.orange,
                          child: Container(
                            height: 65.0.h,
                            color: Colors.orangeAccent,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
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
                                      "$todaysWeeklyName",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "You’ve ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "${snapshot.data!.docs.length}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          " Class Today",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),


                      SizedBox(
                        width: double.maxFinite,
                        child: GFCarousel(
                          autoPlay: true,
                          items: imageList.map(
                            (url) {
                              return Container(
                                margin: const EdgeInsets.only(
                                    left: 5, right: 5, top: 5, bottom: 10),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Image.asset(url,
                                      fit: BoxFit.cover,
                                      width: double.maxFinite),
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
                      SizedBox(
                        height: 90,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2.40,
                                child: NeumorphicButton(
                                  onPressed: () {
                                    Get.toNamed('/StudentDashBoard');
                                  },
                                  style: NeumorphicStyle(
                                      // shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(12)),
                                      depth: 1,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.white),
                                  child: const Center(
                                      child: Text(
                                    "STUDENT PROTAL",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2.40,
                                child: NeumorphicButton(
                                  onPressed: ()=>Get.toNamed('/TutionFees'),
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(12)),
                                      depth: 1,
                                       lightSource: LightSource.topLeft,
                                      color: Colors.white),
                                  child: const Center(
                                      child: Text(
                                    "TUTION FEES",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2.30,
                                child: NeumorphicButton(
                                  onPressed: () =>
                                      Get.toNamed('/FacultyProfile'),
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(12)),
                                      depth: 1,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.white),
                                  child: const Center(
                                      child: Text(
                                    "FACULTY MEMBER",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2.30,
                                child: NeumorphicButton(
                                  onPressed: () {
                                    Get.toNamed('/AcademicResult');
                                  },
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(12)),
                                      depth: 1,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.white),
                                  child: const Center(
                                      child: Text(
                                    "ACADEMIC RESULT",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2.30,
                                child: NeumorphicButton(
                                  onPressed: () {
                                    Get.toNamed('/NU_Portal');
                                  },
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(12)),
                                      depth: 1,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.white),
                                  child: const Center(
                                      child: Text(
                                    "NU PROTAL",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2.30,
                                child: NeumorphicButton(
                                  onPressed: ()=>Get.toNamed('/DiitNotics'),
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(12)),
                                      depth: 1,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.white),
                                  child: const Center(
                                      child: Text(
                                    "DIIT NOTICS",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),

                              SizedBox(
                                width: 10.w,
                              )

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 4.6,
                            width: MediaQuery.of(context).size.width / 2.50,
                            child: NeumorphicButton(
                              onPressed: () => Get.toNamed('/QuestionBank'),
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
                                        "assets/ic_questionbank.png",
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8.7,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      const Text(
                                        "Question Bank",
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


                          SizedBox(
                            width: 10.h,
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height / 4.6,
                            width: MediaQuery.of(context).size.width / 2.50,
                            child: NeumorphicButton(
                              onPressed: () =>
                                  Get.toNamed('/ClassRoutineViewer'),
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
                                        "assets/ic_routine.png",
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
                                        "Class  Routine",
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
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 4.6,
                            width: MediaQuery.of(context).size.width / 2.50,
                            child: NeumorphicButton(
                              onPressed:()=>Get.toNamed('/IT_Clube'),

                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(12)),
                                  depth: 1,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white),
                              child: Column(children: [
                                Image.asset(
                                  "assets/ic_club.png",
                                  height:
                                      MediaQuery.of(context).size.height / 8.2,
                                  width: MediaQuery.of(context).size.width / 3,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Text(
                                  "Club",
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
                              onPressed: () =>
                                  Get.toNamed('/CourseAttendanceView'),
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
                                        "assets/ic_attendance.png",
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

                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.50,
                            child: NeumorphicButton(
                              onPressed: () => Get.toNamed('/QuickPayment'),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(12)),
                                  depth: 0,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/payment.png",
                                        height: MediaQuery.of(context).size.height /
                                            8.2,
                                        width:
                                        MediaQuery.of(context).size.width / 3,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      const Text(
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

                          SizedBox(width: 10.h,),


                          SizedBox(
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.50,
                            child: NeumorphicButton(
                              onPressed: () =>
                                  Get.toNamed('/Community'),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(12)),
                                  depth: 0,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/ic_community.png",
                                        height: MediaQuery.of(context).size.height /
                                            8.2,
                                        width:
                                        MediaQuery.of(context).size.width / 3,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                       Text(
                                        "Community",
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
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }


}
