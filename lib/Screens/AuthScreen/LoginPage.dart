import 'package:diit_portal/services/firebaseServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  var emailCtrl = TextEditingController();
  var passwordCtrl = TextEditingController();

  handleSubmit() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
    }
    print(formkey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 60, 88, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // IconButton(
          //     onPressed: () {
          //       Get.toNamed('/QuestionBankx');
          //     },
          //     icon: Icon(
          //       Icons.multiple_stop_outlined,
          //     )),
          Container(
            child: Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                            Get.offAndToNamed('/DashBoard');
                          },
                          child: Text("Bypass Button")),

                      Image.asset(
                        "assets/portallogo.png",
                        height: 150,
                        width: 225,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: emailCtrl,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Enter Your E-mail",
                          hintStyle: TextStyle(color: Colors.white),
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
                            child: Icon(Icons.email),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: passwordCtrl,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Enter Your password",
                          focusColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
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
                            child: Icon(Icons.lock),
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
                            child: Text(
                              "Forget Password",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
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
                                margin: EdgeInsets.only(top: 30, bottom: 30),
                                snackPosition: SnackPosition.BOTTOM,
                                isDismissible: true,
                                forwardAnimationCurve: Curves.easeOutBack,
                              );
                            } else {
                              User? result = await FirebaseServices()
                                  .login(emailCtrl.text, passwordCtrl.text);
                              if (result != null) {
                                print(result.email);
                                Get.offAndToNamed('/BottlomNavegatonBar');
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: Text(
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
