import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';

class ClassText extends StatefulWidget {
  const ClassText({Key? key}) : super(key: key);

  @override
  State<ClassText> createState() => _ClassTextState();
}

class _ClassTextState extends State<ClassText> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,

    );
  }
}
