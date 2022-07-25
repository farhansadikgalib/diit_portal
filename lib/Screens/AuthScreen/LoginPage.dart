import 'package:diit_portal/services/firebaseServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  var formkey = GlobalKey<FormState>();
  var emailCtrl = TextEditingController();
  var passwordCtrl = TextEditingController();



  SharedPreferences? logindata;
  bool? newuser;

  @override
  void initState()  {
    // TODO: implement initState
    check_if_already_login();
  }


  check_if_already_login() async {
    // Firebase.initializeApp();
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata!.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Get.offAndToNamed('/DashBoard');
    }
  }


  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();

    super.dispose();
  }

  handleSubmit() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
    }
    print(formkey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 60, 88, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50),
                  child: Column(
                    children: <Widget>[
                      // ElevatedButton(
                      //     onPressed: () {
                      //       Get.offAndToNamed('/DashBoard');
                      //     },
                      //     child: Text("Bypass Button")),
                      Image.asset(
                        "assets/portallogo.png",
                        height: 150,
                        width: 225,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: emailCtrl,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Enter Your E-mail",
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
                            child: const Icon(Icons.email),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: passwordCtrl,
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Enter Your password",
                          focusColor: Colors.white,
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
                            child: const Icon(Icons.lock),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlatButton(
                            onPressed: () {
                              Get.toNamed('/ForgetPassPage');
                            },
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (emailCtrl.text == "" ||
                                passwordCtrl.text == "") {
                              Get.snackbar(
                                'Caution!',
                                'All fields are required.',
                                colorText: Colors.white,
                                backgroundColor: Colors.lightGreen,
                                margin: const EdgeInsets.only(top: 30, bottom: 30),
                                snackPosition: SnackPosition.BOTTOM,
                                isDismissible: true,
                                forwardAnimationCurve: Curves.easeOutBack,
                              );
                            } else {
                              User? result = await FirebaseServices()
                                  .login(emailCtrl.text, passwordCtrl.text);
                              if (result != null) {
                                logindata!.setBool('login', false);
                                logindata!.setString('user_email', emailCtrl.text);
                                var id =  result.email!.replaceAll(new RegExp(r'[^0-9]'),'');
                                // dynamic getId= id as int;
                                logindata!.setString('user_id', id);


                                print(id);
                                print(result.email);
                                Get.offAndToNamed('/DashBoard');
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text(
                            "Login Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}