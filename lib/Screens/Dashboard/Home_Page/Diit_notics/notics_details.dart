import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';

class NoticsDetails extends StatefulWidget {


  @override
  State<NoticsDetails> createState() => _NoticsDetailsState();
}

class _NoticsDetailsState extends State<NoticsDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: ColorChanger.scaffoldcolor,
      body:  GlassContainer(
          height: Get.height,
          width: Get.width,
          gradient: LinearGradient(
            colors: [
              Colors.white70.withOpacity(0.35),
              Colors.white70.withOpacity(0.35)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderGradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.60),
              Colors.white.withOpacity(0.10),
              Colors.lightBlueAccent.withOpacity(0.05),
              Colors.lightBlueAccent.withOpacity(0.6)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 0.39, 0.40, 1.0],
          ),
          blur: 15.0,
          borderWidth: 1.5,
          elevation: 3.0,
          isFrostedGlass: true,
          shadowColor: Colors.white.withOpacity(0.20),
          alignment: Alignment.center,
          frostedOpacity: 0.12,
         child:  Hero(
           tag: "Details",
           child: ListTile(
             title: Text("Diit",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             subtitle: Text("Discription",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
             trailing: Text("Time",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
           ),
         ),


         )

    );
  }
}
