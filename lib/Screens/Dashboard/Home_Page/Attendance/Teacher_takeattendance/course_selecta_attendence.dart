import 'package:dropdown_button2/custom_dropdown_button2.dart';
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
    '17th','18th','19th','20th','21th','22th','23th','24th','24th','25th','26th','27th','28th','29th','30th',


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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100,left: 45),
          child: Column(


            children: [
              SizedBox(
                width: 300,
                height: 50,

                child: CustomDropdownButton2(

                  icon: const Icon(Icons.arrow_downward,size: 20,),
                  scrollbarThickness: 10.0,
                  scrollbarAlwaysShow: true,
                  dropdownDecoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                  ),
                  dropdownHeight: 300,
                  dropdownWidth: 100,
                  hint: 'Department',
                  dropdownItems: Depatment,
                  value: selectedDepartment == "" ? null : selectedDepartment,
                  onChanged: (value) {
                    setState(() {
                      selectedDepartment = value;
                    }
                    );
                  },
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: 300,
                height: 50,

                child: CustomDropdownButton2(

                  icon: const Icon(Icons.arrow_downward,size: 20,),
                  scrollbarThickness: 10.0,
                  scrollbarAlwaysShow: true,
                  dropdownDecoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                  ),
                  dropdownHeight: 300,
                  dropdownWidth: 100,
                  hint: 'Batch',
                  dropdownItems: Batch,
                  value:selectedBatch == "" ? null : selectedBatch,
                  onChanged: (value) {
                    setState(() {
                      selectedBatch = value;
                    }
                    );
                  },
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: 300,
                height: 50,

                child: CustomDropdownButton2(

                  icon: const Icon(Icons.arrow_downward,size: 20,),
                  scrollbarThickness: 10.0,
                  scrollbarAlwaysShow: true,
                  dropdownDecoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                  ),
                  dropdownHeight: 300,
                  dropdownWidth: 150,
                  hint: 'Semester',
                  dropdownItems: Semester,
                  value:  selectedSemester == "" ? null :  selectedSemester,
                  onChanged: (value) {
                    setState(() {
                      selectedSemester = value;
                    }
                    );
                  },
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: 300,
                height: 50,

                child: CustomDropdownButton2(

                   icon: const Icon(Icons.arrow_downward,size: 20,),
                  scrollbarThickness: 10.0,
                  scrollbarAlwaysShow: true,
                  dropdownDecoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                  ),
                  dropdownHeight: 300,
                  dropdownWidth: 250,
                  hint: 'Subject Name',
                  dropdownItems: SubjectName,
                  value: selectedSubjctName == "" ? null : selectedSubjctName,
                  onChanged: (value) {
                    setState(() {
                      selectedSubjctName = value;
                    }
                    );
                  },
                ),
              ),
                const SizedBox(height: 30,),
              SizedBox(
                width: 300,
                child: TextFormField(

                  controller: _attendencedate,
                     readOnly: true,
                  decoration: InputDecoration(
                        hintText: 'Date',
                    hintStyle: const TextStyle(fontSize: 18,color: Colors.black),
                    suffixIcon: IconButton(
                       icon: const Icon(Icons.calendar_month,size: 25,color: Colors.indigo,),
                      onPressed: ()=>_selected(context),

                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
                const SizedBox(height: 60,),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(

                    onPressed: ()=>Get.toNamed('/StudentNameAttendencelist'),
                    child:const Text('Next',style: TextStyle(fontSize: 20,color: Colors.white,letterSpacing: 2.0,),)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
