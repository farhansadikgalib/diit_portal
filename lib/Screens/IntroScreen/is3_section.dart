import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Section extends StatefulWidget {
  const Section({Key? key}) : super(key: key);

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {


  String? dropdownValue;
  late SharedPreferences prefs;
  final _key = 'section';
  String select_text = 'Select from here';








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorChanger.scaffoldcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Lottie.asset('assets/intro_asset/second.json',
                height: Get.height / 3.5,
                width: Get.width / 1,
              ),
            ),

            SizedBox(height: Get.height/18,),


              ],
            ),
      ),
    );
  }
}
