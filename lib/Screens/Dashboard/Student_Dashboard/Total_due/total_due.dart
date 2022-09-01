import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';

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
      body: ListView.builder(itemBuilder: (context,index){
        return Container(
          height: MediaQuery.of(context).size.height/10,
          width: MediaQuery.of(context).size.width/1,

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
                    Text('10/06/22',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Payment',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),
                    SizedBox(height: 5,),
                    Text('-',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Type',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),
                    SizedBox(height: 5,),
                    Text('-',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),

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
