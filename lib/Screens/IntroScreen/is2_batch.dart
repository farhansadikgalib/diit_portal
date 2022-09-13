import 'dart:developer';

import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Batch extends StatefulWidget {
  const Batch({Key? key}) : super(key: key);

  @override
  State<Batch> createState() => _BatchState();
}

class _BatchState extends State<Batch> {



  TextEditingController _studentName = TextEditingController();
  TextEditingController _studentnumber = TextEditingController();

  String? blooddropdownValue;
  late SharedPreferences prefs;
  final _bloodkey = 'Blood';
  String bloodselect_text = 'Select Blood Group';

  _blood() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      blooddropdownValue = prefs.getString(_bloodkey) ?? "A"; // get the value
    });
  }
  List<String> blood_group = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];
  String? selectedValue;

  @override
  void initState() {
    _blood();
    super.initState();
  }
  final int _Value = 0;
  bool radioSelected1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
        Center(
        child: Lottie.asset('assets/intro_asset/fast.json',
          height: Get.height / 3,
          width: Get.width / 1,
        ),
        ),
            Text('Personal Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),

            SizedBox(
              height: Get.height/18,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                controller: _studentName,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  hintStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                  prefixIcon: IconTheme(
                    data: IconThemeData(
                      color: Theme.of(context).primaryColor,
                    ),
                    child:  Icon(Icons.info),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                controller: _studentnumber,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Enter Your number",
                  hintStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                  prefixIcon: IconTheme(
                    data: IconThemeData(
                      color: Theme.of(context).primaryColor,
                    ),
                    child:  Icon(Icons.call),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50,right: 50),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children:  [

                      Expanded(
                        child: Text("Select Blood Group",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: blood_group
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
                  value: selectedValue,
                  onChanged: (value) {

                    setState(() {
                      selectedValue = value as String;
                      // this.searchBar(selectedValue);

                      // if(selectedValue!.isNotEmpty){
                      //
                      print(selectedValue);

                    });
                  },
                  icon:  Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.grey,
                  buttonHeight: 50,
                  buttonWidth: double.infinity,
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
                  dropdownElevation: 7,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,

                  scrollbarAlwaysShow: true,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('Able to Donate :',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),

               SizedBox(width: Get.width/25,),
                Row(
                  children: [
                    GlowRadio<bool>(
                      value: true,
                      groupValue: radioSelected1,
                      color: Colors.orangeAccent,
                      onChange: (value) {
                        setState(() {
                          radioSelected1 = value;
                          log(value.toString());
                        });
                      },
                    ),
                    SizedBox(width: 5,),
                    Text("Yes",style: TextStyle(fontSize: 16,color: Colors.white),)
                  ],
                ),
                SizedBox(width:Get.width /30,),
                Row(
                  children: [
                    GlowRadio<bool>(
                      value: false,
                      color: Colors.orangeAccent,
                      groupValue: radioSelected1,
                      onChange: (value) {
                        setState(() {
                          radioSelected1 = value;
                          log(value.toString());
                        });
                      },
                    ),

                    SizedBox(width: 5,),
                    Text("No",style: TextStyle(fontSize: 16,color: Colors.white),)
                  ],
                ),

              ],
            ),



          ],
        ),
      ),
    );
  }
}
