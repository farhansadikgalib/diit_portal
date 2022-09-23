import 'dart:convert';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';



class Helping_Birds extends StatefulWidget {
  const Helping_Birds({Key? key}) : super(key: key);

  @override
  State<Helping_Birds> createState() => _Helping_BirdsState();
}

class _Helping_BirdsState extends State<Helping_Birds> {

  late List readyData;
  late List unfilterData;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/HelpingbirdsData.json');

    setState(() {
      readyData = jsonDecode(jsonText);
    });

    this.unfilterData = readyData;

    return 'susscessfully get data';
  }


  @override
  void initState() {
    this.loadJsonData();
  }



  searchBar(str) {
    var stringExist = str.length > 0 ? true : false;

    if (stringExist) {
      var filterData = [];

      for (int i = 0; i < unfilterData.length; i++) {
        String name = unfilterData[i]['group'].toUpperCase();
        if (name.contains(str.toUpperCase())) {
          filterData.add(unfilterData[i]);
        }

        setState(() {
          this.readyData = filterData;
        });
      }
    } else {
      setState(() {
        this.readyData = this.unfilterData;
      });
    }
  }




  List<String> blood_group = [
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
  //


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  ColorChanger.scaffoldcolor,
        appBar: AppBar(
          backgroundColor: ColorChanger.appbarColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Helping Birds',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "azonix",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),

        body: Column(
          children: [

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children:  [

                      Expanded(
                        child: Text("Search Blood Group",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
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
                      this.searchBar(selectedValue);

                      // if(selectedValue!.isNotEmpty){
                      //
                      print(selectedValue);

                    });
                  },
                  icon: const Icon(
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
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                ),
              ),
            ),
            SizedBox(height: 10,),


            Expanded(
                child: ListView.builder(
                    itemCount: readyData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: (){
                              launch("tel://${readyData[index]
                              ['phone']}");
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(left: 15,right: 15),
                              child: Card(
                                elevation: 5,
                                color:Colors.orange[300],
                                child: ListTile(
                                  title: Text(readyData[index]['name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  subtitle: Text( "Contact: ${readyData[index]['phone']}",style: TextStyle(fontWeight: FontWeight.w600 ),),
                                  trailing: Text(readyData[index]['group'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

