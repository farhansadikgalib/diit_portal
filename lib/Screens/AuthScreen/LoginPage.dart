import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:diit_portal/services/firebaseServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
  String id = '';
  var select = 0;
  int? selectuser;

  @override
  void initState() {
    // TODO: implement initState
    check_if_already_login();
  }

  check_if_already_login() async {
    // Firebase.initializeApp();
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata!.getBool('login') ?? true);
    selectuser = logindata!.getInt('select');
    print(newuser);
    if (newuser == false) {
      print("ok");
      if (selectuser == 0) {
        Get.offAndToNamed('/DashBoard');
        print(selectuser);
      } else {
        print(selectuser);

        Get.offAndToNamed('/TeacherDashbord');
      }
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
      backgroundColor: ColorChanger.scaffoldcolor,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: formkey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/portallogo.png",
                          height: 150,
                          width: 225,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ToggleSwitch(
                          minWidth: 100.0,
                          minHeight: 50,
                          cornerRadius: 15.0,
                          activeBgColors: [
                            [Colors.lightGreen!],
                            [Colors.lightGreen!]
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.orangeAccent[900],
                          inactiveFgColor: Colors.white,
                          initialLabelIndex: 0,
                          totalSwitches: 2,
                          labels: ['Student', 'Teacher'],
                          radiusStyle: true,
                          onToggle: (index) {
                            select = index!;

                            print(select);
                          },
                        ),
                        SizedBox(
                          height: 15,
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
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (emailCtrl.text == "" ||
                                  passwordCtrl.text == "") {
                                Get.snackbar(
                                  'Caution!',
                                  'All fields are required.',
                                  colorText: Colors.white,
                                  backgroundColor: Colors.lightGreen,
                                  margin: const EdgeInsets.only(
                                      top: 30, bottom: 30),
                                  snackPosition: SnackPosition.BOTTOM,
                                  isDismissible: true,
                                  forwardAnimationCurve: Curves.easeOutBack,
                                );
                              } else {
                                User? result = await FirebaseServices()
                                    .login(emailCtrl.text, passwordCtrl.text);
                                if (result != null) {
                                  logindata!.setBool('login', false);
                                  logindata!.setInt('select', select);
                                  logindata!
                                      .setString('user_email', emailCtrl.text);
                                  var id = result.email!
                                      .replaceAll(new RegExp(r'[^0-9]'), '');
                                  // dynamic getId= id as int;
                                  logindata!.setString('user_id', id);
                                  print(id);





                                  // var email = "tony@diit.info";
                                  // bool emailValid =  RegExp(r"^[0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

                                  // var xxuser_name = result.email!
                                  //     .replaceAll(new RegExp(r'^[0-9]'),'');
                                  //
                                  // print(xxuser_name);

                                  if (select == 1) {
                                    Get.offAndToNamed('/TeacherDashbord');
                                  } else {
                                    // print(result.email);
                                    Get.offAndToNamed('/IntroScreen');
                                  }

                                  // else {
                                  //   User? result = await FirebaseServices()
                                  //       .login(emailCtrl.text, passwordCtrl.text);
                                  //   if (result != null) {
                                  //     logindata!.setBool('login', false);
                                  //     logindata!
                                  //         .setString('user_email', emailCtrl.text);
                                  //     id = result.email!
                                  //         .replaceAll(new RegExp(r'[^0-9]'), '');
                                  //
                                  //     int number = int.parse(id);
                                  //     print(number);
                                  //
                                  //     // dynamic getId= id as int;
                                  //     logindata!.setString('user_id', id);
                                  //     if (select == 0) {
                                  //       Get.offAndToNamed('/StudentProfile');
                                  //     } else {
                                  //       Get.offAndToNamed('/DashBoard');
                                  //       // print(id);
                                  //       // print(result.email);
                                  //     }
                                  //     // print(id);
                                  //     // print(result.email);
                                } else {
                                  Get.snackbar(
                                    'Caution!',
                                    'Wrong Information!',
                                    colorText: Colors.white,
                                    backgroundColor: Colors.lightGreen,
                                    margin: const EdgeInsets.only(
                                        top: 30, bottom: 30),
                                    snackPosition: SnackPosition.BOTTOM,
                                    isDismissible: true,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightGreen,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            child: const Text(
                              "Login Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:diit_portal/services/firebaseServices.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:toggle_switch/toggle_switch.dart';
//
// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   var formkey = GlobalKey<FormState>();
//   var emailCtrl = TextEditingController();
//   var passwordCtrl = TextEditingController();
//
//   SharedPreferences? logindata;
//   bool? newuser;
//   String id = '';
//   var select;
//   int? selectuser;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     check_if_already_login();
//   }
//
//   check_if_already_login() async {
//     // Firebase.initializeApp();
//     logindata = await SharedPreferences.getInstance();
//     newuser = (logindata!.getBool('login') ?? true);
//     selectuser=logindata!.getInt('select');
//     print(newuser);
//     if (newuser == false) {
//       print("ok");
//       if(selectuser==0){
//         Get.offAndToNamed('/DashBoard');
//         print(selectuser);
//       }else if(selectuser==1){
//         print(selectuser);
//         Get.offAndToNamed('/TeacherDashbord');
//       }
//     }
//
//   }
//
//   @override
//   void dispose() {
//     emailCtrl.dispose();
//     passwordCtrl.dispose();
//
//     super.dispose();
//   }
//
//   handleSubmit() {
//     if (formkey.currentState!.validate()) {
//       formkey.currentState!.save();
//     }
//     print(formkey);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(1, 60, 88, 1),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: Container(
//                   child: Form(
//                       key: formkey,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 50.0, right: 50),
//                         child: Column(
//                           children: <Widget>[
//                             // ElevatedButton(
//                             //     onPressed: () {
//                             //       Get.offAndToNamed('/DashBoard');
//                             //     },
//                             //     child: Text("Bypass Button")),
//                             Image.asset(
//                               "assets/portallogo.png",
//                               height: 150,
//                               width: 225,
//                             ),
//                             const SizedBox(
//                               height: 25,
//                             ),
//                             ToggleSwitch(
//                               minWidth: 100.0,
//                               minHeight: 50,
//                               cornerRadius: 15.0,
//                               activeBgColors: [
//                                 [Colors.lightGreen!],
//                                 [Colors.lightGreen!]
//                               ],
//                               activeFgColor: Colors.white,
//                               inactiveBgColor: Colors.orangeAccent[900],
//                               inactiveFgColor: Colors.white,
//                               initialLabelIndex: 0,
//                               totalSwitches: 2,
//                               labels: ['Student', 'Teacher'],
//                               radiusStyle: true,
//                               onToggle: (index) {
//                                 select = index!;
//
//                                 print(select);
//                               },
//                             ),
//                             // FkToggle(
//                             //     width: 100,
//                             //     height: 40,
//                             //     labels:  ['Student', 'Teacher',],
//                             //
//                             //     selectedColor: Colors.white,
//                             //     backgroundColor: Color.fromRGBO(1, 60, 88, 1),
//                             //     onSelected: select ),
//                             SizedBox(
//                               height: 15,
//                             ),
//
//                             TextFormField(
//                               controller: emailCtrl,
//                               keyboardType: TextInputType.emailAddress,
//                               style: const TextStyle(color: Colors.white),
//                               decoration: InputDecoration(
//                                 hintText: "Enter Your E-mail",
//                                 hintStyle: const TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                   borderSide: BorderSide(
//                                     color: Theme.of(context).primaryColor,
//                                     width: 3,
//                                   ),
//                                 ),
//                                 prefixIcon: IconTheme(
//                                   data: IconThemeData(
//                                     color: Theme.of(context).primaryColor,
//                                   ),
//                                   child: const Icon(Icons.email),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 15,
//                             ),
//                             TextFormField(
//                               controller: passwordCtrl,
//                               obscureText: true,
//                               style: const TextStyle(color: Colors.white),
//                               decoration: InputDecoration(
//                                 hintText: "Enter Your password",
//                                 focusColor: Colors.white,
//                                 hintStyle: const TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                   borderSide: BorderSide(
//                                     color: Theme.of(context).primaryColor,
//                                     width: 3,
//                                   ),
//                                 ),
//                                 prefixIcon: IconTheme(
//                                   data: IconThemeData(
//                                     color: Theme.of(context).primaryColor,
//                                   ),
//                                   child: const Icon(Icons.lock),
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 FlatButton(
//                                   onPressed: () {
//                                     Get.toNamed('/ForgetPassPage');
//                                   },
//                                   child: const Text(
//                                     "Forget Password",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 20,
//                             ),
//                             SizedBox(
//                               height: 50,
//                               child: ElevatedButton(
//                                 onPressed: () async {
//                                   if (emailCtrl.text == "" ||
//                                       passwordCtrl.text == "") {
//                                     Get.snackbar(
//                                       'Caution!',
//                                       'All fields are required.',
//                                       colorText: Colors.white,
//                                       backgroundColor: Colors.lightGreen,
//                                       margin:
//                                           const EdgeInsets.only(top: 30, bottom: 30),
//                                       snackPosition: SnackPosition.BOTTOM,
//                                       isDismissible: true,
//                                       forwardAnimationCurve: Curves.easeOutBack,
//                                     );
//                                   } else {
//                                     User? result = await FirebaseServices()
//                                         .login(emailCtrl.text, passwordCtrl.text);
//                                     if (result != null) {
//
//
//                                       String id = result.email!
//                                           .replaceAll(new RegExp(r'[^0-9]'), '');
//                                        int getId=0;
//                                        getId= int.parse(id);
//
//                                       var teacher_identify= result.email!.replaceAll(new RegExp('[^A-Za-z0-9]'), '');
//
//
//
//
//                                       if(select==0){
//                                         if(getId is int ){
//                                          Get.offAndToNamed('/QuestionBank');
//                                           print(getId);
//
//                                           logindata!.setBool('login', false);
//                                           logindata!.setInt('select',select );
//                                           logindata!
//                                               .setString('user_email', emailCtrl.text);
//                                           logindata!.setString('user_id', id);
//
//                                         }else if(getId.toString().isEmpty){
//                                           Get.snackbar(
//                                             'Caution!',
//                                             'Wrong Information!',
//                                             colorText: Colors.white,
//                                             backgroundColor: Colors.lightGreen,
//                                             margin: const EdgeInsets.only(
//                                                 top: 30, bottom: 30),
//                                             snackPosition: SnackPosition.BOTTOM,
//                                             isDismissible: true,
//                                             forwardAnimationCurve: Curves.easeOutBack,
//                                           );
//                                         }
//                                         else{
//                                           Get.snackbar(
//                                             'Caution!',
//                                             'Wrong Information!',
//                                             colorText: Colors.white,
//                                             backgroundColor: Colors.lightGreen,
//                                             margin: const EdgeInsets.only(
//                                                 top: 30, bottom: 30),
//                                             snackPosition: SnackPosition.BOTTOM,
//                                             isDismissible: true,
//                                             forwardAnimationCurve: Curves.easeOutBack,
//                                           );
//
//                                         }
//
//                                       }
//
//                                       // if(select==1){
//                                       //   Get.offAndToNamed('/TeacherDashbord');
//                                       //
//                                       //
//                                       //   logindata!.setBool('login', false);
//                                       //   logindata!.setInt('select',select );
//                                       //   logindata!
//                                       //       .setString('user_email', emailCtrl.text);
//                                       //   logindata!.setString('user_id', id);
//                                       //
//                                       // }
//                                       //
//
//
//
//
//
//                                     } else {
//                                       Get.snackbar(
//                                         'Caution!',
//                                         'Wrong Information!',
//                                         colorText: Colors.white,
//                                         backgroundColor: Colors.lightGreen,
//                                         margin: const EdgeInsets.only(
//                                             top: 30, bottom: 30),
//                                         snackPosition: SnackPosition.BOTTOM,
//                                         isDismissible: true,
//                                         forwardAnimationCurve: Curves.easeOutBack,
//                                       );
//                                     }
//                                   }
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.lightGreen,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15)),
//                                 ),
//                                 child: const Text(
//                                   "Login Now",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontFamily: "Poppins",
//                                       fontSize: 14),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
