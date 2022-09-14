import 'dart:developer';

import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Personal_Information extends StatefulWidget {
  const Personal_Information({Key? key}) : super(key: key);

  @override
  State<Personal_Information> createState() => _Personal_InformationState();
}

class _Personal_InformationState extends State<Personal_Information> {



  TextEditingController _studentName = TextEditingController();
  TextEditingController _studentnumber = TextEditingController();

  String? blooddropdownValue;
  late SharedPreferences prefs;
  final _bloodkey = 'blood';
  String bloodselect_text = 'Select Blood Group';




  _setUserPersonalInformation()async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _studentName.text);
    prefs.setString('number', _studentnumber.text);
    prefs.setString('blood', blooddropdownValue!);
    prefs.setString('ablity', radioSelected.toString());

  }




  _blood() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      blooddropdownValue = prefs.getString(_bloodkey) ?? "A+"; // get the value
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
  bool radioSelected = false;
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
                keyboardType: TextInputType.text,
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
                keyboardType: TextInputType.number,
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
                   items: [
                     'A+',
                     'A-',
                     'B+',
                     'B-',
                     'O+',
                     'O-',
                     'AB+',
                     'AB-',]
                        .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              )),
              );
              }).toList(),
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value!;
                    });

                    prefs.setString('name', _studentName.text);
                    prefs.setString('number', _studentnumber.text);


                    prefs.setString('blood',
                        selectedValue!);
                    print(selectedValue);// save value to SharedPreference
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
                      groupValue: radioSelected,
                      color: Colors.orangeAccent,
                      onChange: (value) {
                        setState(() {
                          radioSelected = value;
                          log(value.toString());
                          prefs.setString('availablity', radioSelected.toString());

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
                      groupValue: radioSelected,
                      onChange: (value) {
                        setState(() {
                          radioSelected = value;
                          log(value.toString());
                          prefs.setString('availablity', radioSelected.toString());
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
