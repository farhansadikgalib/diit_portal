
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

final AppBar AppBarString = AppBar(

  title: Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: Colors.black54,
    child: Column(
      children: [
// Text(
//   'DIIT',
//   textAlign: TextAlign.center,
//   style: TextStyle(
//     fontSize: 22.0,
//     fontFamily: "Baloo",
//     fontWeight: FontWeight.bold,
//   ),
// ),
        Text(
          'Daffodil Institute of IT',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "azonix",
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
  backgroundColor: Color.fromRGBO(1, 60, 88, 1),
  centerTitle: true,
  automaticallyImplyLeading: false,
);
