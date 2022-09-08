import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';

class TOTALFINE extends StatefulWidget {
  const TOTALFINE({Key? key}) : super(key: key);

  @override
  State<TOTALFINE> createState() => _TOTALFINEState();
}

class _TOTALFINEState extends State<TOTALFINE> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        body:

        GlassContainer(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 15,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Late fee',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('0 TK',style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Presentation',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('50 TK',style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Class Fine',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('350 TK',style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Assingment',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('0 TK',style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Mid Term',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('600 TK',style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Internal Final',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('0 TK',style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
