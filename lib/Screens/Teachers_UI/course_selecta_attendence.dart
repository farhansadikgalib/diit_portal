import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectCourceAttendence extends StatefulWidget {

  @override
  State<SelectCourceAttendence> createState() => _SelectCourceAttendenceState();
}

class _SelectCourceAttendenceState extends State<SelectCourceAttendence> {
  final List<String> SubjectName = [
    'Web  ',
    'Image Processing',
    'Network Security',
    'Network Security Lab',

  ];

  final List<String> Depatment = [
    'CSE',
    'BBA',
    'BTHM',
    'MBA',
  ];

  final List<String> Batch= [
    '17th','18th','19th','20th','21th','22th','23th',

  ];
  final List<String> Semester = [
    '1st Semester','2nd Semester','3rd Semester',
    '4th Semester','5th Semester','6th Semester'
    ,'7th Semester','8th Semester',


  ];

  String? selectedSubjctName;
  String? selectedDepartment;
  String? selectedBatch;
  String? selectedSemester;



      DateTime selectDate = DateTime.now();

   _selected(BuildContext context)async{
    final selected = await showDatePicker(
        context: context,
        initialDate: selectDate,
        firstDate: DateTime(2000),
        lastDate:  DateTime(2050),
    );
        if(selected != null && selected != selectDate){
          _attendencedate.text="${selected.day} - ${selected.month} - ${selected.year}";
        }
   }
      final TextEditingController _attendencedate =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        appBar: AppBar(
          backgroundColor: ColorChanger.appbarColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Take Attendance',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "azonix",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(top: 100,left: 45),
            child: Column(


              children: [
                SizedBox(
                  width: 300,
                  height: 50,

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children:  [
                          Expanded(
                            child: Text("Department",
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
                      items: Depatment
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
                      value: selectedDepartment,
                      onChanged: (value) {
                        setState(() {
                          selectedDepartment = value as String;

                        });
                      },
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
                 SizedBox(height: 30,),
                SizedBox(
                  width: 300,
                  height: 50,

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children:  [
                          Expanded(
                            child: Text("Batch",
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
                      items: Batch
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
                      value: selectedBatch,
                      onChanged: (value) {
                        setState(() {
                          selectedBatch = value as String;

                        });
                      },
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

                SizedBox(height: 30,),
                SizedBox(
                  width: 300,
                  height: 50,

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children:  [
                          Expanded(
                            child: Text("Semester",
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
                      items: Semester
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
                      value: selectedSemester,
                      onChanged: (value) {
                        setState(() {
                          selectedSemester = value as String;

                        });
                      },
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
                 SizedBox(height: 30,),
                SizedBox(
                  width: 300,
                  height: 50,

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children:  [
                          Expanded(
                            child: Text("Subject Name",
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
                      items: SubjectName
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
                      value: selectedSubjctName,
                      onChanged: (value) {
                        setState(() {
                          selectedSubjctName = value as String;

                        });
                      },
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
                   SizedBox(height: 30,),
                SizedBox(
                  width: 300,
                  child: TextFormField(

                    controller: _attendencedate,
                       readOnly: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                          hintText: 'Date',

                      hintStyle:  TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold,),
                      suffixIcon: IconButton(
                         icon:  Icon(Icons.calendar_month,size: 25,color: Colors.white,),
                        onPressed: ()=>_selected(context),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width:2,color: Colors.white),
                      ),
                    ),
                  ),
                ),
                   SizedBox(height: 60,),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(

                      onPressed: ()=>Get.toNamed('/StudentAttennameList'),
                      child: Text('Next',style: TextStyle(fontSize: 20,color: Colors.white,letterSpacing: 2.0,),)
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
