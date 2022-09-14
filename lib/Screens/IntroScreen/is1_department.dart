import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Department extends StatefulWidget {
  const Department({Key? key}) : super(key: key);

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {

  List<String> batch= ['17', '18', '19', '20','21','22'];

  // Department //
  String? dropdownValue;
  late SharedPreferences prefs;
  final _key = 'department';
  String select_text = 'Select from here';


  _read() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      dropdownValue = prefs.getString(_key) ?? "CSE";// get the value
    });

    var blood= prefs.getString('blood');
    var name= prefs.getString('name');
    var number= prefs.getString('number');
    var ablity=prefs.getString('availablity');

    print(blood);
    print(name);
    print(number);
    print(ablity);

  }

  // Department //

  // batch //
  String? batchdropdownValue;
  late SharedPreferences batchprefs;
  final _batchkey = 'batch';
  String batchselect_text = 'Select from here';

  _batchread() async {
    batchprefs = await SharedPreferences.getInstance();
    setState(() {
      batchdropdownValue = batchprefs.getString(_batchkey) ?? "17"; // get the value
    });
  }
  // batch //

  // Section //
  String? secdropdownValue;
  late SharedPreferences secprefs;
  final _seckey = 'section';
  String secselect_text = 'Select from here';

  _secread() async {
    secprefs = await SharedPreferences.getInstance();
    setState(() {
      secdropdownValue = secprefs.getString(_seckey) ?? "A"; // get the value
    });
  }
  // Section //

  @override
  void initState() {
    super.initState();
    _read(); //
    _batchread();
    _secread();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorChanger.scaffoldcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/intro_asset/department.json',
              height: Get.height / 3,
              width: Get.width / 1,
            ),

            Text('University Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            SizedBox( height: Get.height/50,),
            // Text(
            //   "Department ",
            //   style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold),
            // ),
            Container(
              width: Get.width / 2,
              height: Get.height / 10,
              child: Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        Expanded(
                          child: Text(
                            select_text,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    value: dropdownValue,
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                      prefs.setString(_key,
                          dropdownValue!); // save value to SharedPreference
                    },
                    items: ['CSE', 'BBA', 'THM', 'MBA']
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
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                    ),
                    iconSize: 14,
                    iconEnabledColor: Colors.white,
                    iconDisabledColor: Colors.grey,
                    buttonHeight: 50,
                    buttonWidth: 160,
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
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height/75,),
            // Text("Batch", style: TextStyle(
            //     fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),

            Container(
              width: Get.width / 2,
              height: Get.height / 10,
              child: Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        Expanded(
                          child: Text(
                            batchselect_text,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    value: batchdropdownValue,
                    onChanged: (String? value) {
                      setState(() {
                        batchdropdownValue = value!;
                      });
                      batchprefs.setString(_batchkey,
                          batchdropdownValue!); // save value to SharedPreference
                    },
                    items:batch
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
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                    ),
                    iconSize: 14,
                    iconEnabledColor: Colors.white,
                    iconDisabledColor: Colors.grey,
                    buttonHeight: 50,
                    buttonWidth: 160,
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
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height/75,),
            // Text(
            //   "Section",
            //   style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: Get.height/75,),
            Container(
              width: Get.width / 2,
              height: Get.height / 15,
              child: Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        Expanded(
                          child: Text(
                            secselect_text,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    value: secdropdownValue,
                    onChanged: (String? value) {
                      setState(() {
                        secdropdownValue = value!;
                      });
                      secprefs.setString(_seckey,
                          secdropdownValue!); // save value to SharedPreference
                    },
                    items: ['A', 'B', 'C', 'D']
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
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                    ),
                    iconSize: 14,
                    iconEnabledColor: Colors.white,
                    iconDisabledColor: Colors.grey,
                    buttonHeight: 50,
                    buttonWidth: 160,
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
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
