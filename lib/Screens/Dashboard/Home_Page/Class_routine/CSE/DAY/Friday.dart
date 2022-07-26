
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class FriDay extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlassContainer.frostedGlass(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: const [
            Text("SaturDay",style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
