
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';

class QuickPayment extends StatefulWidget {
  const QuickPayment({Key? key}) : super(key: key);

  @override
  State<QuickPayment> createState() => _QuickPaymentState();
}

class _QuickPaymentState extends State<QuickPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:GlassContainer(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
       gradient: LinearGradient(
         colors: [Colors.white.withOpacity(0.40), Colors.white.withOpacity(0.10)],
         begin: Alignment.topLeft,
         end: Alignment.bottomRight,
       ),
       borderGradient: LinearGradient(
         colors: [Colors.white.withOpacity(0.0), Colors.white.withOpacity(0.0),
           Colors.white.withOpacity(0.05),
           Colors.white.withOpacity(0.6)],
         begin: Alignment.topLeft,
         end: Alignment.bottomRight,
         stops: [0.0, 0.0, 0.0, 0.0],
       ),


       blur: 15.0,

       elevation: 3.0,
       isFrostedGlass: true,
       shadowColor: Colors.black.withOpacity(0.20),
       alignment: Alignment.center,
       frostedOpacity: 0.12,
       child: SafeArea(

         child: Column(
           children: [
             Container(
               height: 200,
               width: 300,
               color: Colors.red,
             )
           ],
         ),
       ),
     ),
    );
  }
}
