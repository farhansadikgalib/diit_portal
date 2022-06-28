

import 'package:flutter/material.dart';

class SunDay extends StatefulWidget {
  @override
  State<SunDay> createState() => _SunDayState();
}

class _SunDayState extends State<SunDay> {
  var notifiIconClick = false;

  var DownIconClick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: SafeArea(
    //     child: SingleChildScrollView(
    //         scrollDirection: Axis.vertical,
    //       child: Padding(
    //         padding: const EdgeInsets.only(top: 10,bottom: 15),
    //         child: Column(
    //           children: [
    //
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       setState(() {
    //                                         notifiIconClick = !notifiIconClick;
    //                                       });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumik',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       // setState(() {
    //                                       //   notifiIconClick = !notifiIconClick;
    //                                       // });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumic',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       // setState(() {
    //                                       //   notifiIconClick = !notifiIconClick;
    //                                       // });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumic',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       // setState(() {
    //                                       //   notifiIconClick = !notifiIconClick;
    //                                       // });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumic',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       // setState(() {
    //                                       //   notifiIconClick = !notifiIconClick;
    //                                       // });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumic',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       // setState(() {
    //                                       //   notifiIconClick = !notifiIconClick;
    //                                       // });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumic',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       // setState(() {
    //                                       //   notifiIconClick = !notifiIconClick;
    //                                       // });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumic',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //             ExpandableNotifier(
    //         child: Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Card(
    //           clipBehavior: Clip.antiAlias,
    //           child: Column(
    //             children: <Widget>[
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height/4.2,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff92B9A6),
    //                     shape: BoxShape.rectangle,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
    //                     child: Container(
    //                       height: MediaQuery.of(context).size.height / 4.2,
    //                       width: MediaQuery.of(context).size.width,
    //                       decoration: BoxDecoration(
    //                         color: Color(0xff92B9A6),
    //                         borderRadius: BorderRadius.all(Radius.circular(15)),
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     Text(
    //                                       'Image Procssing',
    //                                       style: TextStyle(
    //                                           fontSize: 18,
    //                                           color: Colors.black,
    //                                           fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'CSE-812',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       '8th Semester',
    //                                       style: TextStyle(
    //                                         fontSize: 15,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(
    //                                       height: 10,
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 IconButton(
    //                                     onPressed: () {
    //                                       // setState(() {
    //                                       //   notifiIconClick = !notifiIconClick;
    //                                       // });
    //                                     },
    //                                     icon: Icon(
    //                                       (notifiIconClick == false)
    //                                           ? Icons.notifications_active
    //                                           : Icons.notifications_off,
    //                                       color: Colors.black38,
    //                                       size: 35,
    //                                     )),
    //                               ],
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Container(
    //                                 width: MediaQuery.of(context).size.width/1.2,
    //                                 color: Colors.white,
    //                               ),
    //                             ],
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10,right: 10),
    //                             child: Divider(
    //                               thickness: 4,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //
    //                           Column(
    //                             children: [
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Poly Bhoumic',
    //                                       style:
    //                                       TextStyle(fontSize: 18, fontFamily: "Poppins"),
    //                                     ),
    //                                     Text(
    //                                       'L-603 ',
    //                                       style: TextStyle(fontSize: 18),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //
    //                               SizedBox(
    //                                 height: 5,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 10, right: 10),
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       'Lecturer,Dept of CSE',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //                                     Image.asset('assets/clock.png'),
    //                                     Text(
    //                                       '10:30AM-12:00PM',
    //                                       style: TextStyle(
    //                                         fontSize: 16,
    //                                       ),
    //                                     ),
    //
    //
    //                                   ],
    //                                 ),
    //                               ),
    //
    //
    //                             ],
    //                           ),
    //
    //
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //
    //
    //               ScrollOnExpand(
    //                 scrollOnExpand: true,
    //                 scrollOnCollapse: false,
    //                 child: ExpandablePanel(
    //                   theme: const ExpandableThemeData(
    //                     headerAlignment: ExpandablePanelHeaderAlignment.center,
    //                     tapBodyToCollapse: true,
    //
    //                   ),
    //                   header: Padding(
    //                       padding: EdgeInsets.all(10),
    //                       child: Text(
    //                         "",style: TextStyle(fontSize: 18),
    //
    //                       )),
    //                   collapsed: Text("Details",style: TextStyle(fontSize: 20,)),
    //                     // softWrap: true,
    //
    //                     // overflow: TextOverflow.ellipsis,
    //
    //                   expanded: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       // for (var _ in Iterable.generate(3))
    //                         Padding(
    //                             padding: EdgeInsets.only(bottom: 2),
    //                             child: Container(
    //                               color: Color(0xff4D4A4A),
    //                               height: MediaQuery.of(context).size.height/7,
    //                               width: double.infinity,
    //                               child:Padding(
    //                                 padding: const EdgeInsets.only(top: 10,left: 15,right: 5),
    //                                 child: Row(
    //                                   children: [
    //
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Status:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("On Time",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child: Icon(Icons.call,size: 22,color: Colors.red,),
    //                                               ),
    //
    //                                               InkWell(
    //                                                 onTap: (){},
    //                                                 child:Text(" 01753248377",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                                 ),                // ),
    //
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Padding(
    //                                       padding: const EdgeInsets.only(bottom: 10),
    //                                       child: Container(
    //                                         width: 2,
    //                                         height: 200,
    //                                         color: Colors.black,
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 10,),
    //                                     Expanded(
    //                                       flex: 2,
    //                                       child: Column(
    //                                         children: [
    //                                           Row(
    //                                             children: [
    //                                               Text("Section:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("B",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Room:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("302",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                           SizedBox(height: 10,),
    //                                           Row(
    //                                             children: [
    //                                               Text("Day:",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                                               SizedBox(width: 5,),
    //                                               Text("Sunday",style: TextStyle(fontSize: 20,color: Color(0xff92D306)),
    //                                               ),
    //
    //                                             ],
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //
    //                             ),
    //
    //
    //                               // overflow: TextOverflow.fade,
    //                             ),
    //                     ],
    //                   ),
    //                   builder: (_, collapsed, expanded) {
    //                     return Padding(
    //                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    //                       child: Expandable(
    //                         collapsed: collapsed,
    //                         expanded: expanded,
    //                         theme: const ExpandableThemeData(crossFadePoint: 0),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   )
    // ),
    //
    //
    // ]
    // ),
    //       ),
    //
    //     ),
    //
    // ),
    );
  }
}
