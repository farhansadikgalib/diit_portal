import 'dart:convert';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ClassText extends StatefulWidget {
  const ClassText({Key? key}) : super(key: key);

  @override
  State<ClassText> createState() => _ClassTextState();
}

class _ClassTextState extends State<ClassText> {

late List result;

Future<String> loadstudentresult() async {
  var jsonText = await rootBundle.loadString('assets/StudentResult.json');

  setState(() {
    result = jsonDecode(jsonText);
  });

  return 'susscessfully get data';
}


@override
void initState() {
  this.loadstudentresult();
}




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
           body: Padding(
             padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 5),
             child: Column(
               children: [
                 Expanded(
                     flex: 1,
                   child:  Table(
                     defaultColumnWidth: FixedColumnWidth(200.0),
                     border: TableBorder.all(
                         color: Colors.orangeAccent,
                         style: BorderStyle.solid,
                         width: 2),
                     columnWidths: {
                       0:FractionColumnWidth(0.25),
                       1:FractionColumnWidth(0.5),
                       2:FractionColumnWidth(0.25),
                     },

                     children: [
                       TableRow(
                           decoration: BoxDecoration(color: Colors.purpleAccent.shade400),
                           children: [
                             Column(children: [
                               Padding(
                                 padding: EdgeInsets.only(
                                     top: 8, left: 8, right: 8, bottom: 5),
                                 child: Text(
                                   'Class ID',
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
                                   'Name',
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
                                   'Position',
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold),
                                 ),
                               ),
                             ]),
                           ]),

                     ],
                   ),
                 ),
                 Expanded(
                   flex: 10,
                   child: ListView.builder(
                       itemCount: result.length,
                       itemBuilder: (BuildContext context, index){
                     return Padding(
                       padding: const EdgeInsets.only(left: 5,right: 5),
                       child: Table(
                         defaultColumnWidth: FixedColumnWidth(100.0),
                         columnWidths: {
                           0:FractionColumnWidth(0.25),
                           1:FractionColumnWidth(0.5),
                           2:FractionColumnWidth(0.25),
                         },
                         border: TableBorder.all(
                             color: Colors.orangeAccent,
                             style: BorderStyle.solid,
                             width: 2),
                         children: [
                           TableRow(
                               decoration:
                               BoxDecoration(color: Colors.teal.shade400),
                               children: [
                                 Column(children: [
                                   Padding(
                                     padding:  EdgeInsets.only(
                                         top: 8, bottom: 8),
                                     child: Text(result[index]['ClassId'], style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                     ),
                                   )
                                 ]),

                                 Column(children: [
                                   Padding(
                                     padding:  EdgeInsets.only(
                                         top: 8, bottom: 8),
                                     child: Text(result[index]['Name'], style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                     ),
                                   )
                                 ]),

                                 Column(children: [
                                   Padding(
                                     padding:  EdgeInsets.only(
                                         top: 7, bottom: 8),
                                     child: Text(result[index]['Position'], style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                     ),
                                   ),

                                 ]

                                 ),
                               ]),
                           // table data //
                         ],
                       ),
                     );
                   }),
                 ),
               ],
             ),
           )
      ),
    );
  }
}
