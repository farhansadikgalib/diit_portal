import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:glass_kit/glass_kit.dart';

class StudentProfile extends StatefulWidget {
  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  String user_email = '';
  String user_id = '';
  String user_department = '';
  String user_batch = '';
  String user_section = '';

  Future _signOut() async {
    await FirebaseAuth.instance.signOut();
    Get.offAndToNamed('/LoginPage');
  }

  @override
  void initState() {
    super.initState();
    getSharedPreferenceUserData();
    getFirebaseUserData();
  }

  getFirebaseUserData() async {
    var firebaseUser = await FirebaseAuth.instance.currentUser!;

    final snapshot = await FirebaseFirestore.instance
        .collection('user_data')
        .doc(firebaseUser.uid)
        .get();
    // print( snapshot['id']);
    print(snapshot['batch']);
    print(snapshot['department']);
    print(snapshot['section']);

    user_department = snapshot['department'];
    user_batch = snapshot['batch'];
    user_section = snapshot['section'];
  }

  getSharedPreferenceUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_email = prefs.getString('user_email')!;
      user_id = prefs.getString('user_id')!;
      // user_department = prefs.getString('department')!;
      // user_batch = prefs.getString('batch')!;
      // user_section = prefs.getString('section')!;
      prefs.setBool('login', true);
    });
  }

  CollectionReference ref = FirebaseFirestore.instance
      .collection('user_data')
      .doc(FirebaseAuth.instance.currentUser!.uid).parent;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: ref.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // dynamic z = snapshot.data!.docs.length;

          // if (snapshot.data!.docs.length == 0) {
          //   return Center(
          //     child: Text(
          //       "You have no saved Notes !",
          //       style: TextStyle(
          //         color: Colors.blue,
          //       ),
          //     ),
          //   );
          // }

          return Scaffold(
              backgroundColor: ColorChanger.scaffoldcolor,
              body: SafeArea(
          child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Column(children: [
              GlassContainer(
                height: Get.height/3,
                width: Get.width,
                gradient: LinearGradient(
                  colors: [
                    Colors.white70.withOpacity(0.35),
                    Colors.white70.withOpacity(0.35)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderGradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.60),
                    Colors.white.withOpacity(0.10),
                    Colors.lightBlueAccent.withOpacity(0.05),
                    Colors.lightBlueAccent.withOpacity(0.6)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 0.39, 0.40, 1.0],
                ),
                blur: 15.0,
                borderWidth: 1.5,
                elevation: 3.0,
                isFrostedGlass: true,
                shadowColor: Colors.white.withOpacity(0.20),
                alignment: Alignment.center,
                frostedOpacity: 0.12,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Container(
                        height: Get.height/4.9,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left:0,top: 0, ),
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
                                        children:  [
                                          Text(
                                            "Hey,",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Baloo',
                                                color: Colors.black54),
                                          ),

                                          Text(
                                            "Md.Abdur Rahman",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w200,
                                                fontFamily: 'Baloo',
                                                color: Colors.black54),
                                          ),

                                          Text(user_email??'user@mail.com'
                                            ,style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w200,
                                                fontFamily: 'Baloo',
                                                color: Colors.black54),

                                          ),
                                          Text(
                                            "Student",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w200,
                                                fontFamily: 'Baloo',
                                                color: Colors.black54),
                                          ),

                                          Text(
                                            user_id,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w200,
                                                fontFamily: 'Baloo',
                                                color: Colors.black54),
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
                                                bottomRight: Radius.circular(30))),
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
                                          radius: 45,
                                          child: ClipOval(
                                            child: Image.asset(
                                              'assets/men.jpg',
                                              fit: BoxFit.cover,
                                              height: 100,
                                              width: 100,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),

                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/3.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black12,
                            ),
                            child:  Text(
                              user_department,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16,color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/3.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black12,
                            ),
                            child:  Text(
                              user_batch,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16,color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/3.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black12,
                            ),
                            child:  Text(
                              user_section,
                              textAlign: TextAlign.center,

                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16,color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              GlassContainer(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.35),
                    Colors.white.withOpacity(0.35)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderGradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.60),
                    Colors.white.withOpacity(0.10),
                    Colors.lightBlueAccent.withOpacity(0.05),
                    Colors.lightBlueAccent.withOpacity(0.6)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 0.39, 0.40, 1.0],
                ),
                blur: 15.0,
                elevation: 3.0,
                isFrostedGlass: true,
                shadowColor: Colors.black.withOpacity(0.20),
                alignment: Alignment.center,
                frostedOpacity: 0.12,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),

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
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height/22,
                                    width: MediaQuery.of(context).size.width/4.2,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5)),
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
                                  height: MediaQuery.of(context).size.height/22,
                                  width: MediaQuery.of(context).size.width/4.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    'Result 180',
                                    style: TextStyle(fontSize: 14),
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
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height/22,
                                    width: MediaQuery.of(context).size.width/4.2,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5)),
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
                                  height: MediaQuery.of(context).size.height/22,
                                  width: MediaQuery.of(context).size.width/4.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    'Result 180',
                                    style: TextStyle(fontSize: 14),
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
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height/22,
                                    width: MediaQuery.of(context).size.width/4.2,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5)),
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
                                  height: MediaQuery.of(context).size.height/22,
                                  width: MediaQuery.of(context).size.width/4.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    'Point 3.95',
                                    style: TextStyle(
                                      fontSize: 14,
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
                    const Spacer(),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/22,
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
                      height: MediaQuery.of(context).size.height/22,
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
                      height: MediaQuery.of(context).size.height/22,
                      width: double.infinity,
                      child: InkWell(
                        onTap: ()=>
                            _signOut(),
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
                ),
              ),
            ]),
          )));
        } else {
          return Center(
            child: SizedBox(),
          );
        }
      },
    );
  }

//   Scaffold(
}
