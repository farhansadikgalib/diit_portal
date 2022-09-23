import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentAttendanceDetailes extends StatefulWidget {
  @override
  State<StudentAttendanceDetailes> createState() =>
      _StudentAttendanceDetailesState();
}

class _StudentAttendanceDetailesState extends State<StudentAttendanceDetailes> {

 @override
  void initState() {
    // TODO: implement initState
    getUserData();
  }

  String user_id = '';

  String user_department = '';

  String user_batch = '';

  String user_section = '';

  String user_name = '';

  String user_email = '';

 late SharedPreferences prefs;
  getUserData() async {
     prefs = await SharedPreferences.getInstance();
    user_department = prefs.getString('department')!;
    user_id = prefs.getString('user_id')!;
    user_name = prefs.getString('name')!;
     user_batch= prefs.getString('batch')!;
     print(user_name);
     print(user_id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user_name),



            GlassmorphicContainer(
                width: 350,
                height: 200,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 2,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF97A9E1).withOpacity(0.1),
                      const Color(0xFF97A9E1).withOpacity(0.05),
                    ],
                    stops: const [
                      0.1,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFCDC7CD).withOpacity(0.5),
                    const Color((0xFFCDC7CD)).withOpacity(0.5),
                  ],
                ),
                child: Column(
                  children:  [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      user_name,
                      style: (TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '170115',
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'CSE',
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2017',
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            GlassmorphicContainer(
                width: 350,
                height: 200,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 2,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF97A9E1).withOpacity(0.1),
                      const Color(0xFF97A9E1).withOpacity(0.05),
                    ],
                    stops: const [
                      0.1,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFCDC7CD).withOpacity(0.5),
                    const Color((0xFFCDC7CD)).withOpacity(0.5),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Image Processing',
                      style: (TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'CSE - 412',
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Total Class 30',
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Present - 22',
                          style: (TextStyle(
                              color: Colors.white, fontSize: 18)),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Absent - 8',
                          style: (TextStyle(
                              color: Colors.white, fontSize: 18)),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
