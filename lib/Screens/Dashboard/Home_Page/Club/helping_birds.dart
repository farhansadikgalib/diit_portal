import 'package:diit_portal/Screens/Dashboard/Home_Page/Club/blood_model.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Helping_Birds extends StatefulWidget {
  const Helping_Birds({Key? key}) : super(key: key);

  @override
  State<Helping_Birds> createState() => _Helping_BirdsState();
}

class _Helping_BirdsState extends State<Helping_Birds> {

  List<String> department = [
    'A+',
    'A-',
    'B+',
    'B-',
    'o+',
    'o-',
    'AB+',
    'AB-',
  ];
  String? selectedValue;

  // List <Map<String,dynamic>> Gxx = [
  //   {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   }, {
  //     "name": "Galib",
  //     "number":01775389319,
  //     "BloodGroup":"A+"
  //   }, {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   }, {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   }, {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   }, {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   }, {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   }, {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   }, {
  //     "name": "Shawon",
  //     "number":01775389319,
  //     "BloodGroup":"AB+"
  //   },
  // ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        body: Padding(
          padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
          child: Column(
              children: [

             Center(
               child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: [

                      Expanded(
                        child: Text(
                          'Blood Group',
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
                  items: department
                      .map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 16,
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
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.grey,
                  buttonHeight: 50,
                  buttonWidth: MediaQuery.of(context).size.width/1.1,
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
           ListView.builder(
             itemCount: Gr.length,
               itemBuilder: (BuildContext context,index){


               return

             Card(
               child: ListTile(
                 title: Text(Gr[0]['name']),
                 // subtitle: Text(Gr[0]['number']),
                 trailing: Text(Gr[0]['BloodGroup']),
               ),
             );

               })
           ]
          ),
        ),
      ),
    );
  }
}
