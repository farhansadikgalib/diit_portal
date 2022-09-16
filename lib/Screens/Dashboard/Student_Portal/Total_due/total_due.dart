import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TOTALDUE extends StatefulWidget {
  const TOTALDUE({Key? key}) : super(key: key);

  @override
  State<TOTALDUE> createState() => _TOTALDUEState();
}

class _TOTALDUEState extends State<TOTALDUE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        appBar:AppBar(title: Text('Due Information',
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
                                child: Text('10/06/22',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,),
                                ),
                              ),
                              Text('-',
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('-',
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
