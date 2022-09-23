import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';
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
   getFirebaseUserData();
  }

  String user_id = '';

  String user_department = '';

  String user_batch = '';

  String user_section = '';

  String user_name = '';

  String user_email = '';

 getFirebaseUserData() async {
   var firebaseUser = await FirebaseAuth.instance.currentUser!;

   final snapshot = await FirebaseFirestore.instance
       .collection('UserData')
       .doc(firebaseUser.uid)
       .get();
   // print( snapshot['id']);
   // print(snapshot['name']);
   // print(snapshot['email']);
   // print(snapshot['class_id']);
   user_id = snapshot['class_id'];
   user_name = snapshot['name'];
   user_email = snapshot['email'];

   user_department = snapshot['department'];
   user_batch = snapshot['batch'];
   user_section = snapshot['section'];
   print(user_name);
 }


 CollectionReference ref = FirebaseFirestore.instance
     .collection('UserData')
     .doc(FirebaseAuth.instance.currentUser!.uid)
     .parent;

 @override
 Widget build(BuildContext context) {
   return FutureBuilder<QuerySnapshot>(
     future: ref.get(),
     builder: (context, snapshot) {
       if (snapshot.hasData) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      appBar: AppBar(
        backgroundColor: ColorChanger.appbarColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('View Attendance',
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "azonix",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GlassmorphicContainer(
                width: Get.width/1.25,
                height: Get.height/6,
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
                      user_id,
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user_department,
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user_batch,
                      style: (TextStyle(
                          color: Colors.white, fontSize: 18)),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            GlassmorphicContainer(
                width: Get.width/1.25,
                height: Get.height/6,
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
    ); } else {
 return Scaffold(
 backgroundColor: ColorChanger.scaffoldcolor,
 body: Center(
 child: Lottie.asset('assets/lotti_file/loading_animation.json',
 height: 100, width: 100),
 ),
 );
 }
},
);
}

//   Scaffold(
}
