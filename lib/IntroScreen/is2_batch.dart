import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {

  List<String> batch = [
    '17th Batch',
    '18th Batch',
    '19th Batch',
    '20th Batch',
    '21th Batch',
    '22th Batch',
    '23th Batch',
    '24th Batch',
  ];
  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0,68,88, 1),
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

          children: [
            
            Center(
              child: Lottie.asset('assets/intro_asset/fast.json',
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/1,),
            ),
            
            Text("Select Batch",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),

            Container(
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/5,
              child: Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [

                        Expanded(
                          child: Text(
                            'Select from here',
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
                    items: batch
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
            ),
            SizedBox(height: MediaQuery.of(context).size.height/4,),
          ],
        ),
      ),
    );
  }
}
