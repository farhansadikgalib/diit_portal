import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  String user_email = '';
  String user_id = '';
  String user_department = '';
  String user_batch = '';
  String user_section = '';

  getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
      user_email = prefs.getString('user_email')!;
      user_id = prefs.getString('user_id')!;
      user_department = prefs.getString('department')!;
      user_batch = prefs.getString('batch')!;
      user_section = prefs.getString('section')!;

    // print(user_email);
    // print(user_id);
    // print(user_section);
    // print(user_department);
    // print(user_batch);
    // return user_email;
  }

  CollectionReference _reference = FirebaseFirestore.instance
      .collection('Users')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('user_data');







  final FirebaseAuth _auth = FirebaseAuth.instance;
  var uid,uemail,uname ;
  getCurrentUser() async {
    final User? user = _auth.currentUser;
    uid = user!.uid;
    uemail = user.email;
    // uname = user.displayName;
    print(uid);
    print(uemail);

    _setUserData();
  }



  _setUserData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // String  user_email = prefs.getString('user_email')!;
    user_id = prefs.getString('user_id')!;
    user_department = prefs.getString('department')!;
    user_batch = prefs.getString('batch')!;
    user_section = prefs.getString('section')!;

    var firebaseUser = await FirebaseAuth.instance.currentUser!;
    FirebaseFirestore.instance.collection("user_data").doc(firebaseUser.uid).set(
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



  @override
  void initState() {
    getUserData();
    getCurrentUser();
  }

  TextEditingController _Studentname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //     future: _reference.get(),
    //     builder: (context, snapshot) {
    //       if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: ColorChanger.scaffoldcolor,
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Lottie.asset(
                        'assets/intro_asset/thard.json',
                        height: Get.height / 3.5,
                        width: Get.width / 1,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      "Welcome To DiiT Portal",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),

                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 50,right: 50),
                      child: TextFormField(
                        controller: _Studentname,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Enter Your Name",
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 3,
                            ),
                          ),
                          prefixIcon: IconTheme(
                            data: IconThemeData(
                              color: Theme.of(context).primaryColor,
                            ),
                            child:  Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                  ],
                ),
              ),
            );
          }

        //   else {
        //     return Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   }
        // });
  }

