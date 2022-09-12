import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  String user_email = '';
  String user_name = '';
  String get_user_name = '';

  String user_id = '';
  String user_department = '';
  String user_batch = '';
  String user_section = '';
   late CollectionReference _reference;
  @override
  void initState() {
    initFirestoreRef();
    getUserData();
    getCurrentUser();
  }


  Future<void> initFirestoreRef() async{
    _reference = FirebaseFirestore.instance
        .collection("UserData");

  }


  getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    user_email = prefs.getString('user_email')!;
    user_id = prefs.getString('user_id')!;
    user_department = prefs.getString('department')!;
    user_batch = prefs.getString('batch')!;
    user_section = prefs.getString('section')!;
  }


  final FirebaseAuth _auth = FirebaseAuth.instance;
  var uid, uemail, uname;

  getCurrentUser() async {
    final User? user = _auth.currentUser;
    uid = user!.uid;
    uemail = user.email;
    print(uid);
    print(uemail);
  }


  _setUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // String  user_email = prefs.getString('user_email')!;
    prefs.setString('user_name', _studentName.text);
    user_id = prefs.getString('user_id')!;
    user_department = prefs.getString('department')!;
    user_batch = prefs.getString('batch')!;
    user_section = prefs.getString('section')!;
    user_name = prefs.getString('user_name')!;

    get_user_name = _studentName.text;
   var firebaseUser = await FirebaseAuth.instance.currentUser!;


    FirebaseFirestore.instance.collection("UserData")
        .doc(firebaseUser.uid)
        .set(
        {
          "name": "$get_user_name",
          "id": "$uid",
          "email": "$uemail",
          "department": "$user_department",
          "batch": "$user_batch",
          "section": "$user_section",
          "class_id": "$user_id"
        })
        .then((_) {
      print("success!");
      Get.offAndToNamed('/DashBoard');
    });
  }


  TextEditingController _studentName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _reference.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: ColorChanger.scaffoldcolor,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: TextFormField(
                            controller: _studentName,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Enter Your Name",
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Theme
                                      .of(context)
                                      .primaryColor,
                                  width: 3,
                                ),
                              ),
                              prefixIcon: IconTheme(
                                data: IconThemeData(
                                  color: Theme
                                      .of(context)
                                      .primaryColor,
                                ),
                                child: Icon(Icons.info),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),


                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: ElevatedButton(onPressed: () {
                            if (_studentName.text == '') {
                              Get.snackbar(
                                'Caution!',
                                'Name is required.',
                                colorText: Colors.white,
                                backgroundColor: Colors.lightGreen,
                                margin: const EdgeInsets.only(
                                    top: 30, bottom: 30),
                                snackPosition: SnackPosition.BOTTOM,
                                isDismissible: true,
                                forwardAnimationCurve: Curves.easeOutBack,
                              );
                            } else {
                              _setUserData();
                            }
                          },
                            child: Text("Enter", style: TextStyle(
                                fontSize: 16, color: Colors.white),),
                            style: ButtonStyle(),),
                        ),
                        SizedBox(height: Get.height / 10,),
                      ],
                    )

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
