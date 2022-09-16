import 'package:diit_portal/CustomWidgets/App_Bar/app_bar.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TOTALPAID extends StatefulWidget {
  const TOTALPAID({Key? key}) : super(key: key);

  @override
  State<TOTALPAID> createState() => _TOTALPAIDState();
}

class _TOTALPAIDState extends State<TOTALPAID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        appBar:AppBar(title: Text('Paid Information',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),
        ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor:ColorChanger.scaffoldcolor,
        ) ,
        body: Column(
          children:<Widget> [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: Get.height/14,
                child: Card(

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: Text('Date',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,),
                        ),
                      ),
                      Text('Paid',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('Type',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2,),
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Container(
                        height: Get.height/13,
                        child: Card(

                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('06/05/22',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,),
                                ),
                              ),
                              Text('2900/-',
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('Bank',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),

          ],
        )
    );
  }
}
