import 'dart:math';
import 'package:flutter/material.dart';
class ClockColumn extends StatelessWidget {

  String binaryInteger;
  String title;
  Color color;
  int? rows;
  List? bits;


  ClockColumn({required this.binaryInteger, required this.title, required this.color, this.rows=4})
  {
   bits = binaryInteger.split('');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...[
          Container(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
              // style: Theme.of(context).textTheme.display2,
            ),
          )
        ],
        ...bits!.asMap().entries.map((entry) {
          int idx = entry.key;
          String bit = entry.value;

          bool isActive = bit == '1';
          int? binaryCellValue = pow(2, 3 - idx) as int?;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 475),
            curve: Curves.ease,
            height: 25,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: isActive
                  ? color
                  : idx < 4 - rows!
                  ? Colors.white.withOpacity(0)
                  : Colors.black38,
            ),
            margin: const EdgeInsets.all(4),
            child: Center(
              child: isActive
                  ? Text(
                binaryCellValue.toString(),
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              )
                  : Container(),
            ),
          );
        }),
        ...[
          Text(
            int.parse(binaryInteger, radix: 2).toString(),
            style: TextStyle(fontSize: 18, color: color,fontWeight: FontWeight.bold),
          ),
          Container(
            child: Text(
              binaryInteger,
              style: TextStyle(fontSize: 18, color: color),
            ),
          )
        ]
      ],
    );
  }
}