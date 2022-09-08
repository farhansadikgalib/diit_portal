
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Screens/Dashboard/Notification/All_Notification.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/HomePage.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Portal/Student_Portal.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Profile/student_profile.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:diit_portal/CustomWidgets/App_Bar/app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Dashboard extends StatefulWidget {


  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }








  int _currentIndex = 0;

  List NavBarPageControlar = [
    HomePage(),
    StudentPortal(),
    AllNotification(),
    StudentProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBarString,

       bottomNavigationBar: BottomNavyBar(
         backgroundColor:   ColorChanger.scaffoldcolor,
         selectedIndex: _currentIndex,
         onItemSelected: (index) {
           setState(() {
             _currentIndex = index;
           });
         },
         items: <BottomNavyBarItem>[
           BottomNavyBarItem(
               icon: const Icon(Icons.home_work),
               title: const Text("Home"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
           BottomNavyBarItem(
               icon: const Icon(Icons.dashboard_rounded),
               title: const Text("Portal"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
           BottomNavyBarItem(
               icon: const Icon(Icons.notifications_active),
               title: const Text("Notification"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
           BottomNavyBarItem(
               icon: const Icon(Icons.person_pin),
               title: const Text("Profile"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
         ],
       ),
        body: NavBarPageControlar[_currentIndex],
    );
  }
}
