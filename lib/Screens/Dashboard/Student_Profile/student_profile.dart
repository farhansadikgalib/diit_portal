import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:glass_kit/glass_kit.dart';

class StudentProfile extends StatefulWidget {
  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  String user_email = '';
  String user_name = '';

  String user_id = '';
  String user_department = '';
  String user_batch = '';
  String user_section = '';

  Future _signOut() async {
    await FirebaseAuth.instance.signOut();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    Get.offAndToNamed('/LoginPage');
  }

  @override
  void initState() {
    super.initState();
    getFirebaseUserData();
  }

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
              body: SafeArea(
                  child: SingleChildScrollView(
                scrollDirection: Axis.vertical,

                child: Column(children: [
                  SizedBox(
                    height: 5.h,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white10,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white10,
                      child: Column(
                        children: [
                          Container(
                            height: Get.height / 5,
                            width: Get.width,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Hey,",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Baloo',
                                                  color: Colors.white70),
                                            ),
                                            Text(
                                              user_name,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w200,
                                                  fontFamily: 'Baloo',
                                                  color: Colors.white70),
                                            ),
                                            Text(
                                              user_email ?? 'user@mail.com',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                  fontFamily: 'Baloo',
                                                  color: Colors.white70),
                                            ),
                                            Text(
                                              "Student",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                  fontFamily: 'Baloo',
                                                  color: Colors.white70),
                                            ),
                                            Text(
                                              user_id,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w200,
                                                  fontFamily: 'Baloo',
                                                  color: Colors.white70),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.blueGrey,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(30),
                                                  bottomLeft: Radius.circular(30),
                                                  bottomRight:
                                                      Radius.circular(30))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, bottom: 8),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.orangeAccent,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(30),
                                                    bottomLeft: Radius.circular(30),
                                                    bottomRight:
                                                        Radius.circular(30))),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: CircleAvatar(
                                            radius: 50,
                                            child: ClipOval(
                                              child: Image.asset(
                                                'assets/men.jpg',
                                                fit: BoxFit.cover,
                                                height: 75,
                                                width: 75,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: Get.height / 16,
                                width: Get.width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white24,
                                ),
                                child: Text(
                                  user_department,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                  height: Get.height / 16,
                                  width: Get.width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white24,
                                ),
                                child: Text(
                                  user_batch,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: Get.height / 16,
                                width: Get.width / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white24,
                                ),
                                child: Text(
                                  user_section,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(

                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white10,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Mid-Term',
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white70),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          height:
                                              MediaQuery.of(context).size.height /
                                                  22,
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  4.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Text(
                                            '1st',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                22,
                                        width: MediaQuery.of(context).size.width /
                                            4.2,
                                        decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Text(
                                          'Result 180',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Internal Final',
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white70),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          height:
                                              MediaQuery.of(context).size.height /
                                                  22,
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  4.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Text(
                                            '1st',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                22,
                                        width: MediaQuery.of(context).size.width /
                                            4.2,
                                        decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Text(
                                          'Result 180',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'AVG (CGPA)',
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white70),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          height:
                                              MediaQuery.of(context).size.height /
                                                  22,
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  4.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Text(
                                            '1st',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                22,
                                        width: MediaQuery.of(context).size.width /
                                            4.2,
                                        decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Text(
                                          '3.95',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                const Divider(
                                  thickness: 1,
                                  color: Colors.white70,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 22,
                                  width: double.infinity,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Settings',
                                            style: TextStyle(fontSize: 16,color: Colors.white70),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white70,
                                            size: 18,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.white70,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 22,
                                  width: double.infinity,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Help & Support',
                                            style: TextStyle(fontSize: 16,color: Colors.white70),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 18,
                                            color: Colors.white70,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.white70,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 22,
                                  width: double.infinity,
                                  child: InkWell(
                                    onTap: () => _signOut(),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Logout',
                                            style: TextStyle(fontSize: 16,color: Colors.white70),
                                          ),
                                          Icon(
                                            Icons.logout,
                                            color: Colors.white70,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.white70,

                                ),

                                SizedBox(height: 20,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              )));
        } else {
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
