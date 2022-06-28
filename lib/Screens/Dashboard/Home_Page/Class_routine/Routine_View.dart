import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/DAY/Friday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/DAY/Monday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/DAY/Saturday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/DAY/Sunday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/DAY/Thursday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/DAY/Tuesday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/CSE/DAY/Wednesday.dart';



import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';


class ClassRoutineViewer extends StatefulWidget {
  @override
  State<ClassRoutineViewer> createState() => _ClassRoutineViewerState();
}

class _ClassRoutineViewerState extends State<ClassRoutineViewer>with TickerProviderStateMixin {
   late TabController _tabController;
  @override
  void initState() {
   _tabController = TabController(length:7, vsync: this);
    super.initState();
  }


  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
           child: Column(
             children:<Widget> [
               ColorfulTabBar(
                 controller: _tabController,
                 indicatorHeight: 6,
                 verticalTabPadding: 2,
                 labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                 selectedHeight: 48,
                 unselectedHeight: 40,
                 tabs: [
                 TabItem(color: Color(0xffecafe8), title: Text('Saturday')),
                 TabItem(color: Color(0xff8aec95), title: Text(' Sunday')),
                 TabItem(color: Color(0xff6cc9d0), title: Text('Monday')),
                 TabItem(color: Color(0xff7297fc), title: Text('Tuesday')),
                 TabItem(color: Color(0xffefdd84), title: Text('Wednesday')),
                   TabItem(color: Color(0xbe748c60), title: Text('Thrusday')),
                 TabItem(color: Color(0xb870999a), title: Text(' Friday')),

                 ],
               ),

               Expanded(
                 child: TabBarView(
                     controller: _tabController,
                     children:[

                       SaturDay(),
                            SunDay(),
                            MonDay(),
                           TuesDay(),
                       WednesDay(),
                          ThursDay(),
                          FriDay(),
                     ],
                 ),
               ),


        ],
      ),
    ));
  }
}

