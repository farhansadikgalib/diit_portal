
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

final AppBar AppBarString = AppBar(

  title: Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: Colors.black54,
    child: Column(
      children: [

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
