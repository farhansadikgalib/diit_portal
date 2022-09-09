import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';

class InternalFinal extends StatefulWidget {
  const InternalFinal({Key? key}) : super(key: key);

  @override
  State<InternalFinal> createState() => _InternalFinalState();
}

class _InternalFinalState extends State<InternalFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
    );
  }
}
