import 'package:cloud_firestore/cloud_firestore.dart';
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

    print(user_email);
    print(user_id);
    print(user_section);
    print(user_department);
    print(user_batch);
    // return user_email;
  }

  CollectionReference _reference = FirebaseFirestore.instance
      .collection('Users')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('user_data');


  @override
  void initState() {
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _reference.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: Color.fromRGBO(0, 68, 88, 1),
              body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Lottie.asset(
                        'assets/intro_asset/thard.json',
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),

                  ],
                ),
              ),
            );
          }

          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
