import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';

import 'package:getwidget/components/radio/gf_radio.dart';
import 'package:getwidget/size/gf_size.dart';

import 'package:getwidget/types/gf_radio_type.dart';

class StudentNameAttendencelist extends StatefulWidget {

  @override
  State<StudentNameAttendencelist> createState() => _StudentNameAttendencelistState();
}

class _StudentNameAttendencelistState extends State<StudentNameAttendencelist> {
  final List StudentName = [
    'Md.Abdur Rahman',
    'Farhan Sadik Galib'
  ];

  final List StudentID = [
    '170115',
    '170138'
  ];


  int _Value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 1.1,

                child: ListView.builder(
                    itemCount: StudentName.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Container(
                          height: 110,
                          color: Color(0xffCCBDBD),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Text('${StudentName[index]}',
                                style: TextStyle(fontSize: 18),),
                              SizedBox(height: 5,),
                              Text('ID - ${StudentID[index]}', style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20),
                                child: Row(
                                  children: [

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}
