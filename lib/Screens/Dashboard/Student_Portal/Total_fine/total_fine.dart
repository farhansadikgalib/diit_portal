import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';

class TOTALFINE extends StatefulWidget {
  const TOTALFINE({Key? key}) : super(key: key);

  @override
  State<TOTALFINE> createState() => _TOTALFINEState();
}

class _TOTALFINEState extends State<TOTALFINE> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Table(
                    defaultColumnWidth: FixedColumnWidth(300.0),
                    border: TableBorder.all(
                        color: Colors.orangeAccent,
                        style: BorderStyle.solid,
                        width: 2),
                    columnWidths: {
                      0:FractionColumnWidth(0.5),
                      1:FractionColumnWidth(0.30),
                    },

                    children: [
                      TableRow(
                          decoration: BoxDecoration(color: Colors.teal.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'Type',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Padding(
                                padding:  EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  'Taka',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'Attendance Fine',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  '0 TK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(color: Colors.black26),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'Quize Exam',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  '0 TK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(color: Colors.green),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'Mid-Term Exam',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  '0 TK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.blueGrey.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'Internal Final Exam',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  '0 TK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.purple.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'Presentation',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  '0 TK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(color: Colors.brown.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'Assignment',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  '0 TK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
