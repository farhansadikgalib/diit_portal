import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ForgetPassPage extends StatefulWidget {
  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

class _ForgetPassPageState extends State<ForgetPassPage> {
  var emailCtrl = TextEditingController();

  var formkey = GlobalKey<FormState>();

  Future passReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailCtrl.text.trim());
      Get.defaultDialog(
          backgroundColor: Colors.lightGreen,
          content: const Text(
            "Password reset link sent! Check your email",
            style: TextStyle(color: Colors.black),
          ));
    } on FirebaseAuthException catch (e) {
      print(e);

      Get.snackbar(
        'Caution !',
        e.message.toString(),
        colorText: Colors.white,
        backgroundColor: Colors.lightGreen,
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        snackPosition: SnackPosition.BOTTOM,
        isDismissible: true,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      //   // backgroundColor: ColorChanger.scaffoldcolor,
      //   // elevation: 0,
      //   //
      //   // leading: IconButton(
      //   //   icon: const Icon(Icons.arrow_back, color: Colors.orangeAccent),
      //   //   onPressed: () => Get.back(),
      //   // ),
      // ),
      backgroundColor: ColorChanger.scaffoldcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Lottie.asset('assets/lotti_file/forget-password.json',
                height: 100, width: 100),
          ),
          SizedBox(height: 50,),
          
          Container(
            child: Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50),
                  child: Column(
                    children: <Widget>[
                      const Text("Forget Your Password!",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                          "Don't worry just put your univarsity email here and click the button on the below",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailCtrl,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
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
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onPressed: () {
                            passReset();
                          },
                          child: const Text(
                            "Help Me",
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
