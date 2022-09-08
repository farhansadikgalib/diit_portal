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
      body: ListView.builder(itemBuilder: (context,index){
        return Container(
          height: Get.height/10,
          width: Get.width/1,

          child: Card(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Date',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),
                    SizedBox(height: 5,),
                    Text('10/05/22',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Payment',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),
                    SizedBox(height: 5,),
                    Text('2900/-',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Type',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),
                    SizedBox(height: 5,),
                    Text('Bank',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),

                  ],
                ),
              ],
            )
          ),
        );
      })
    );
  }
}
