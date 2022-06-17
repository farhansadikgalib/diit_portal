import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:glass_kit/glass_kit.dart';
class AllNotification extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: GlassContainer(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.40),
              Colors.white.withOpacity(0.10),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderGradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.60),
              Colors.white.withOpacity(0.10),
              Colors.purpleAccent.withOpacity(0.05),
              Colors.purpleAccent.withOpacity(0.60),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.39, 0.40, 1.0],
          ),
          blur: 20,
          shadowColor: Colors.orange.withOpacity(0.20),
          child:Center(child: GlowText("No New Notification!!",style: TextStyle(fontSize: 25,color: Colors.orange),)),


        ),
      ),

    );
  }
}
