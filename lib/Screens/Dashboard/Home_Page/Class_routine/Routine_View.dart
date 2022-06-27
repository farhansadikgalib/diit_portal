
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/Day/Friday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/Day/Monday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/Day/Saturday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/Day/Sunday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/Day/Thursday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/Day/Tuesday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/Day/Wednesday.dart';
import 'package:flutter/material.dart';



class ClassRoutineViewer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(

          labelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),
          unselectedLabelColor: Colors.black,
          indicatorWeight: 2.6,
          indicatorColor: Colors.black45,
          unselectedLabelStyle: TextStyle(fontSize: 15),
          isScrollable: true,
          tabs: [
            Text('Satur\nday'),
            Text('Sun\nday'),
            Text('Mon\nday'),
            Text('Tues\nday'),
            Text('Wednes\nday'),
            Text('Thrus\nday'),
            Text('Fri\nday')
          ],
        ),),

        body:
           TabBarView(children: [
             SaturDay(),
             SunDay(),
             MonDay(),
             TuesDay(),
             WednesDay(),
             ThursDay(),
             FriDay(),

                 ]),

    ),


    );
  }
}
