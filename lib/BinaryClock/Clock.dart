import 'dart:async';
import 'package:diit_portal/BinaryClock/ClockColumn.dart';
import 'package:flutter/cupertino.dart';
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
    Timer.periodic(Duration(seconds: 1), (v) {
      setState(() {
        _binaryTime = BinaryTime();
      });
    });
    super.initState();
  }

  // Future<bool> _onWillPop() async {
  //   return (await showDialog(
  //     builder: (context) =>
  //     new AlertDialog(
  //       // title: new Text('Are you sure?'),
  //       backgroundColor: Colors.white,
  //       content: new Text('Do you want to exit Binary Calculator'),
  //       actions: <Widget>[
  //         TextButton(
  //           onPressed: () => Navigator.of(context).pop(false),
  //           child: new Text(
  //             'No',
  //             style: TextStyle(color: Colors.green[800]),
  //           ),
  //         ),
  //         TextButton(
  //           onPressed: () => Navigator.of(context).pop(true),
  //           child: new Text(
  //             'Yes',
  //             style: TextStyle(color: Colors.red[800]),
  //           ),
  //         ),
  //       ],
  //     ),
  //   )) ?? false;
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(99, 78, 119, 1),
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


//
// class Clock extends StatefulWidget {
//   Clock({Key key}) : super(key: key);
//   @override
//   _ClockState createState() => _ClockState();
// }
//
// class _ClockState extends State<Clock> {
//
//   DateTime _now = DateTime.now();
//
//
//   @override
//   void initState() {
//     Timer.periodic(Duration(seconds: 1),(v){
//       setState(() {
//         _now = DateTime.now();
//       });
//
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//       padding: EdgeInsets.all(50) ,
//
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//
//           ClockColumn(
//             binaryInteger: _binaryTime.hourTens,
//             title: 'H',
//             color: Colors.blue,
//             rows: 2,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.hourOnes,
//             title: 'H',
//             color: Colors.lightBlue,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.minuteTens,
//             title: 'M',
//             color: Colors.green,
//             rows: 3,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.minuteOnes,
//             title: 'M',
//             color: Colors.lightGreen,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.secondTens,
//             title: 'S',
//             color: Colors.deepOrangeAccent,
//             rows: 3,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.secondOnes,
//             title: 'S',
//             color: Colors.orangeAccent,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
