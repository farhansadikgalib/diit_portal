import 'package:flutter/material.dart';
import 'package:multi_charts/multi_charts.dart';
class StudentDashBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 300,
                  width: 300,
                  child:  PieChart(
                    values: [15, 75, 5, 5],
                    labels: ["Payable", "Paid", "Due","Fine", ],
                    sliceFillColors: [
                       Color(0xffCDC845),
                      Color(0xff81E85E),
                     Color(0xff5DD8D0),
                      Color(0xbc4fa4cd),

                    ],
                    animationDuration: Duration(milliseconds: 2000),
                    legendPosition: LegendPosition.Right,
                  ),
                ),
              ),

           Padding(
               padding: EdgeInsets.only(right: 10,left: 10),
             child:   Column(
               children: [
                 Container(
                   height: 120,
                   width: 400,
                   decoration: BoxDecoration(
                       color: Color(0xffCDC845),
                       borderRadius: BorderRadius.circular(20)
                   ),
                   child: Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child: Image.asset('assets/taka.png')
                       ),
                       Expanded(
                           flex: 2,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('2,80,000/-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),),
                               SizedBox(height: 10,),
                               Text('Total Payable',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,fontFamily:'Poppins' ),)
                             ],
                           ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                   height: 120,
                   width: 400,
                   decoration: BoxDecoration(
                       color: Color(0xff81E85E),
                       borderRadius: BorderRadius.circular(20)
                   ),
                   child: Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child: Image.asset('assets/taka.png')
                       ),
                       Expanded(
                           flex: 2,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('2,00,000/-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),),
                               SizedBox(height: 10,),
                               Text('Total Paid',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,fontFamily:'Poppins' ),)
                             ],
                           ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                   height: 120,
                   width: 400,
                   decoration: BoxDecoration(
                       color: Color(0xff5DD8D0),
                       borderRadius: BorderRadius.circular(20)
                   ),
                   child: Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child: Image.asset('assets/taka.png')
                       ),
                       Expanded(
                           flex: 2,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('80,000/-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),),
                               SizedBox(height: 10,),
                               Text('Total Due',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,fontFamily:'Poppins' ),)
                             ],
                           ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                   height: 120,
                   width: 400,
                   decoration: BoxDecoration(
                       color: Color(0xbc4fa4cd),
                       borderRadius: BorderRadius.circular(20)
                   ),
                   child: Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child: Image.asset('assets/taka.png')
                       ),
                       Expanded(
                           flex: 2,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('0/-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),),
                               SizedBox(height: 10,),
                               Text('Total Fine',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,fontFamily:'Poppins' ),)
                             ],
                           ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
