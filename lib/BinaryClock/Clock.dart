import 'dart:async';
import 'package:diit_portal/BinaryClock/ClockColumn.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class Clock extends StatefulWidget {

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  BinaryTime _binaryTime = BinaryTime();

  // Tick the clock


  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (v) {
      setState(() {
        _binaryTime = BinaryTime();
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            // color: Color.fromRGBO(99, 78, 119, 1),
          color: Color.fromRGBO(120, 100, 220,1.0),
            borderRadius:
            BorderRadius.only(topLeft: Radius.circular(5))),

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

           children: [

             Column(


             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [


                 // Columns for the clock
                 ClockColumn(
                   binaryInteger: _binaryTime.hourTens,
                   title:'H',
                   color: Colors.lightBlueAccent,
                   rows: 2,

                 ),
                 ClockColumn(
                   binaryInteger: _binaryTime.hourOnes,
                   title: 'H',
                   color: Colors.lightBlueAccent,
                 ),
                 ClockColumn(
                   binaryInteger: _binaryTime.minuteTens,
                   title: 'M',
                   color: Colors.lightGreenAccent,
                   rows: 3,
                 ),
                 ClockColumn(
                   binaryInteger: _binaryTime.minuteOnes,
                   title: 'M',
                   color: Colors.lightGreenAccent,
                 ),
                 ClockColumn(
                   binaryInteger: _binaryTime.secondTens,
                   title: 'S',
                   color: Colors.orangeAccent,
                   rows: 3,
                 ),
                 ClockColumn(
                   binaryInteger: _binaryTime.secondOnes,
                   title: 'S',
                   color: Colors.orangeAccent,
                 ),
               ],
             ),



           ],
         ),
      ),
    );
  }
}



class BinaryTime{

  List<String> binaryIntegers=[];

  BinaryTime(){

    DateTime now = DateTime.now();
    String hhmmss = DateFormat("Hms").format(now).replaceAll(':', '');

    binaryIntegers = hhmmss.split('').map((str) => int.parse(str).toRadixString(2).padLeft(4,'0')).toList();


  }

  get hourTens => binaryIntegers[0];
  get hourOnes => binaryIntegers[1];
  get minuteTens => binaryIntegers[2];
  get minuteOnes => binaryIntegers[3];
  get secondTens => binaryIntegers[4];
  get secondOnes => binaryIntegers[5];


}
