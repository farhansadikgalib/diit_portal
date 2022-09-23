
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

final AppBar AppBarString = AppBar(

  title: Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: Colors.orangeAccent,
    child: Column(
      children: const [

        Text(
          'DiiT Portal',
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
  backgroundColor:  ColorChanger.appbarColor,
  centerTitle: true,
  automaticallyImplyLeading: false,
);
