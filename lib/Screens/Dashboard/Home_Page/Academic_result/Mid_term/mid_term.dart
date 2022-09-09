import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';

class MidTerm extends StatefulWidget {
  const MidTerm({Key? key}) : super(key: key);

  @override
  State<MidTerm> createState() => _MidTermState();
}

class _MidTermState extends State<MidTerm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
    );
  }
}
