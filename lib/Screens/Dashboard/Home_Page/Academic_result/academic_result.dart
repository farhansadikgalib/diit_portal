import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


import 'package:flutter/material.dart';

class AcademicResult extends StatefulWidget {


  @override
  State<AcademicResult> createState() => _AcademicResultState();
}

class _AcademicResultState extends State<AcademicResult> {


  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: ColorChanger.scaffoldcolor,
         body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(

             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 25),
                 child: Center(
                   child: Text('Academic Result',
                     style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                 ),
               ),



             ],
           ),
         ),
      ),
    );
  }
}
