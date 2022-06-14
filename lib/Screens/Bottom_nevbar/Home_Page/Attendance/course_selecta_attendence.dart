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

  String? selectedValue;
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
      TextEditingController _attendencedate =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 200,left: 45),
          child: Column(


            children: [
              Container(
                width: 300,
                height: 50,

                child: CustomDropdownButton2(

                   icon: Icon(Icons.arrow_downward,size: 25,),
                  scrollbarThickness: 10.0,
                  scrollbarAlwaysShow: true,
                  dropdownDecoration: BoxDecoration(
                    color: Colors.orangeAccent,
                  ),
                  dropdownHeight: 300,
                  dropdownWidth: 250,
                  hint: 'Subject Name',
                  dropdownItems: SubjectName,
                  value: selectedValue == "" ? null : selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    }
                    );
                  },
                ),
              ),
                SizedBox(height: 30,),
              Container(
                width: 300,
                child: TextFormField(

                  controller: _attendencedate,
                     readOnly: true,
                  decoration: InputDecoration(
                        hintText: 'Date',
                    hintStyle: TextStyle(fontSize: 18,color: Colors.black),
                    suffixIcon: IconButton(
                       icon: Icon(Icons.calendar_month,size: 25,color: Colors.indigo,),
                      onPressed: ()=>_selected(context),

                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
                SizedBox(height: 60,),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(

                    onPressed: ()=>Get.toNamed('/StudentNameAttendencelist'),
                    child:Text('Next',style: TextStyle(fontSize: 20,color: Colors.white,letterSpacing: 2.0,),)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
