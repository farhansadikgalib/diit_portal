import 'package:diit_portal/Screens/App_Colors/app_color.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Friday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Monday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Saturday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Sunday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Thursday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Tuesday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Wednesday.dart';

import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';

class ClassRoutineViewer extends StatefulWidget {
  @override
  State<ClassRoutineViewer> createState() => _ClassRoutineViewerState();
}

class _ClassRoutineViewerState extends State<ClassRoutineViewer>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
        body: SafeArea(
      child: Column(
        children: <Widget>[
          ColorfulTabBar(
            controller: _tabController,
            indicatorHeight: 6,
            verticalTabPadding: 2,
            labelStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            selectedHeight: 48,
            unselectedHeight: 40,
            tabs: [
              TabItem(color: const Color(0xffecafe8), title: const Text('Saturday')),
              TabItem(color: const Color(0xff8aec95), title: const Text(' Sunday')),
              TabItem(color: const Color(0xff6cc9d0), title: const Text('Monday')),
              TabItem(color: const Color(0xff7297fc), title: const Text('Tuesday')),
              TabItem(color: const Color(0xffefdd84), title: const Text('Wednesday')),
              TabItem(color: const Color(0xbe748c60), title: const Text('Thrusday')),
              TabItem(color: const Color(0xb870999a), title: const Text(' Friday')),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                const Saturday(),
                const Sunday(),
                const MonDay(),
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
