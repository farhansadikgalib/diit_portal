import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0,68,88, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(height: 20,),
            Center(
              child: Lottie.asset('assets/intro_asset/thard.json',
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/1,),
            ),
            SizedBox(height: 20,),
            Center(child: Text("Welcome",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
            SizedBox(height: MediaQuery.of(context).size.height/4,),

          ],
        ),
      ),

    );
  }
}
