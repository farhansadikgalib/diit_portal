import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class CourseAttendanceView extends StatefulWidget {


  @override
  State<CourseAttendanceView> createState() => _CourseAttendanceViewState();
}

class _CourseAttendanceViewState extends State<CourseAttendanceView> {
  late final List<String> SubjectNames = [
    'Web  ',
    'Image Processing',
    'Network Security',
    'Network Security Lab',

  ];
  final List<String> Semester = [
    '1st Semester',
    '2nd Semester',
    '3rd Semester',
    '4th Semester',
    '5th Semester',
    '6th Semester',
    '7th Semester',
    '8th Semester',


  ];

  String? selectedValue;
  String? selectedSemester;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      appBar: AppBar(
        backgroundColor: ColorChanger.appbarColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Course Name',
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "azonix",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
       body: SafeArea(
         child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 150,left: 45),
               child: Column(
                 children: [

                   Text('View Attendance',style: TextStyle(fontSize: 25,color: Colors.orange,fontWeight: FontWeight.bold),),
                   SizedBox(height: 50,),
                   SizedBox(
                     width: 300,
                     height: 50,
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton2(
                         isExpanded: true,
                         hint: Row(
                           children:  [
                             Expanded(
                               child: Text("Semester",
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black54,
                                 ),
                                 overflow: TextOverflow.ellipsis,
                               ),
                             ),
                           ],
                         ),
                         items: Semester
                             .map((item) =>
                             DropdownMenuItem<String>(
                               value: item,
                               child: Text(
                                 item,
                                 style: const TextStyle(
                                   fontSize: 14,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white,
                                 ),
                               ),
                             ))
                             .toList(),
                         value: selectedSemester,
                         onChanged: (value) {
                           setState(() {
                             selectedSemester = value as String;

                           });
                         },
                         icon: const Icon(
                           Icons.arrow_forward_ios_outlined,
                         ),
                         iconSize: 14,
                         iconEnabledColor: Colors.white,
                         iconDisabledColor: Colors.grey,
                         buttonHeight: 50,
                         buttonWidth: 160,
                         buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                         buttonDecoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(14),
                           border: Border.all(
                             color: Colors.black26,
                           ),
                           color: Colors.white54,
                         ),
                         buttonElevation: 2,
                         itemHeight: 40,
                         dropdownDecoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(14),
                           color: Colors.orange,
                         ),
                         dropdownElevation: 8,
                         scrollbarRadius: const Radius.circular(40),
                         scrollbarThickness: 6,
                         scrollbarAlwaysShow: true,
                       ),
                     ),
                   ),
                   const SizedBox(height: 20,),
                   SizedBox(
                     width: 300,
                     height: 50,
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton2(
                         isExpanded: true,
                         hint: Row(
                           children:  [
                             Expanded(
                               child: Text("Subject Name",
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black54,
                                 ),
                                 overflow: TextOverflow.ellipsis,
                               ),
                             ),
                           ],
                         ),
                         items: SubjectNames
                             .map((item) =>
                             DropdownMenuItem<String>(
                               value: item,
                               child: Text(
                                 item,
                                 style: const TextStyle(
                                   fontSize: 14,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white,
                                 ),
                               ),
                             ))
                             .toList(),
                         value: selectedValue ,
                         onChanged: (value) {
                           setState(() {
                             selectedValue  = value as String;

                           });
                         },
                         icon: const Icon(
                           Icons.arrow_forward_ios_outlined,
                         ),
                         iconSize: 14,
                         iconEnabledColor: Colors.white,
                         iconDisabledColor: Colors.grey,
                         buttonHeight: 50,
                         buttonWidth: 160,
                         buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                         buttonDecoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(14),
                           border: Border.all(
                             color: Colors.black26,
                           ),
                           color: Colors.white54,
                         ),
                         buttonElevation: 2,
                         itemHeight: 40,
                         dropdownDecoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(14),
                           color: Colors.orange,
                         ),
                         dropdownElevation: 8,
                         scrollbarRadius: const Radius.circular(40),
                         scrollbarThickness: 6,
                         scrollbarAlwaysShow: true,
                       ),
                     ),
                   ),
                  const SizedBox(height: 80,),
                   SizedBox(
                     width: MediaQuery.of(context).size.width/3,
                      child: NeumorphicButton(
                         onPressed: () {
                           Get.toNamed('/StudentAttendanceDetailes');
                         },
                         style: NeumorphicStyle(
                           // shape: NeumorphicShape.concave,
                             boxShape: NeumorphicBoxShape.roundRect(
                                 BorderRadius.circular(12)),
                             depth: 1,
                             lightSource: LightSource.topLeft,
                             color: Colors.white),
                         child: const Center(
                             child: Text(
                               "NEXT",
                               style: TextStyle(
                                   fontSize: 15,
                                   color: Colors.black45,
                                   fontWeight: FontWeight.bold),
                             )),
                       ),

                   )
                 ],
               ),
             ),
               Spacer(),
           ],
         ),
       ),
    );
  }
}
