import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

   // SharedPreferences? logindata;
  String user_email='';
  String user_id='';
  String user_department = '';
  String user_batch = '';
  String user_section = '';


  Future _signOut() async {
    await FirebaseAuth.instance.signOut();
    Get.offAndToNamed('/LoginPage');
  }

  @override
  void initState()  {
    super.initState();
     // email =user_email!;
    getUserData();
  }

  getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_email = prefs.getString('user_email')!;
      user_id = prefs.getString('user_id')!;
      // user_department = prefs.getString('department')!;
      // user_batch = prefs.getString('batch')!;
      // user_section = prefs.getString('section')!;

      prefs.setBool('login', true);


    });
    print(user_email);
    // print(user_section);
    // print(user_department);
    // print(user_batch);    // return user_email;
  }




  final List<String> Batch = [
    '17th Batch',
    '18th Batch',
    '19th Batch',
    '20th Batch',
    '21th Batch',
    '22th Batch',
    '23th Batch',
    '24th Batch',
  ];
  final List<String> Section = [
    'A Section',
    'B Section',
    'C Section',
    'D Section',
  ];

  String? selectedValue;
  String? selectedSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            GlassContainer(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width,
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
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children:  [
                                    Text(
                                      "Md.Abdur Rahman",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w200,
                                          fontFamily: 'Baloo',
                                          color: Colors.black54),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(user_email??''
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
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomDropdownButton2(
                          scrollbarThickness: 5.0,
                          scrollbarAlwaysShow: true,
                          dropdownDecoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hint: 'Select Batch',
                          dropdownItems: Batch,
                          value: selectedValue == "" ? null : selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomDropdownButton2(
                          dropdownDecoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hint: 'Section',
                          dropdownItems: Section,
                          value: selectedSection == "" ? null : selectedSection,
                          onChanged: (value) {
                            setState(() {
                              selectedSection = value;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height/18,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12,
                          ),
                          child:  Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              user_id,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                                'Midterm',
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
                                'AVG(CGPA)',
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
  }
}

