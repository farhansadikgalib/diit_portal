import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseAttendanceView extends StatefulWidget {


  @override
  State<CourseAttendanceView> createState() => _CourseAttendanceViewState();
}

class _CourseAttendanceViewState extends State<CourseAttendanceView> {
  final List<String> SubjectName = [
    'Web  ',
    'Image Processing',
    'Network Security',
    'Network Security Lab',

  ];
  final List<String> Semester = [
    '1st Semester','2nd Semester','3rd Semester','4th Semester','5th Semester','6th Semester','7th Semester','8th Semester',


  ];

  String? selectedValue;
  String? selectedSemester;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 150,left: 45),
               child: Column(
                 children: [
                   Container(
                     width: 300,
                     height: 50,
                     child: CustomDropdownButton2(
                       icon: Icon(Icons.arrow_downward,size: 20,),
                       scrollbarThickness: 10.0,
                       scrollbarAlwaysShow: true,
                       dropdownDecoration: BoxDecoration(
                         color: Colors.orangeAccent,
                       ),
                       dropdownHeight: 300,
                       dropdownWidth: 150,
                       hint: 'Select Semester',
                       dropdownItems: Semester,
                       value: selectedSemester == "" ? null : selectedSemester,
                       onChanged: (value) {
                         setState(() {
                           selectedSemester= value;
                         }
                         );
                       },
                     ),
                   ),
                   SizedBox(height: 20,),
                   Container(
                     width: 300,
                     height: 50,
                     child: CustomDropdownButton2(
                       icon: Icon(Icons.arrow_downward,size: 20,),
                       scrollbarThickness: 10.0,
                       scrollbarAlwaysShow: true,
                       dropdownDecoration: BoxDecoration(
                         color: Colors.orangeAccent,
                       ),
                       dropdownHeight: 300,
                       dropdownWidth: 250,
                       hint: 'Subject Name',
                       dropdownItems: SubjectName,
                       value: selectedValue == "" ? null : selectedValue,
                       onChanged: (value) {
                         setState(() {
                           selectedValue = value;
                         }
                         );
                       },
                     ),
                   ),
                  SizedBox(height: 80,),
                   SizedBox(
                     width: 150,
                     child: ElevatedButton(onPressed: ()=>Get.toNamed('/StudentAttendanceDetailes'),
                         child: Text('NEXT',style: TextStyle(fontSize: 18,letterSpacing: 1.5),)),
                   )
                 ],
               ),
             ),

           ],
         ),
       ),
    );
  }
}
