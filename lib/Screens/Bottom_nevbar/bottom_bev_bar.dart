
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:diit_portal/Screens/Bottom_nevbar/Student_Dashboard/dashboard.dart';
import 'package:diit_portal/Screens/Bottom_nevbar/Home_Page/home_page.dart';
import 'package:diit_portal/Screens/Bottom_nevbar/Student_Notifi/student_notification.dart';
import 'package:diit_portal/Screens/Bottom_nevbar/Student_Profile/student_profile.dart';
import 'package:flutter/material.dart';


import '../App_Bar/app_bar.dart';
class BottlomNavegatonBar extends StatefulWidget {


  @override
  State<BottlomNavegatonBar> createState() => _BottlomNavegatonBarState();
}

class _BottlomNavegatonBarState extends State<BottlomNavegatonBar> {

  int _currentIndex = 0;

  List NavBarPageControlar = [
    HomePage(),
    StudentDashBoard(),
    StudentNotification(),
    StudentProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBarString,

       bottomNavigationBar: BottomNavyBar(
         selectedIndex: _currentIndex,
         onItemSelected: (index) {
           setState(() {
             _currentIndex = index;
           });
         },
         items: <BottomNavyBarItem>[
           BottomNavyBarItem(
               icon: Icon(Icons.home_work),
               title: Text("Home"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
           BottomNavyBarItem(
               icon: Icon(Icons.dashboard_rounded),
               title: Text("Student Portal"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
           BottomNavyBarItem(
               icon: Icon(Icons.notifications_active),
               title: Text("Notification"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
           BottomNavyBarItem(
               icon: Icon(Icons.person_pin),
               title: Text("Profile"),
               activeColor: Colors.orange,
               inactiveColor: Colors.black54),
         ],
       ),
        body: NavBarPageControlar[_currentIndex],
    );
  }
}
