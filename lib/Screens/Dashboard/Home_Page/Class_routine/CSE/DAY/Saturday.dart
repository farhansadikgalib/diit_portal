import 'package:flutter/material.dart';
import 'package:flutter_expandable/expandable.dart';
import 'package:flutter_expandable/expander.dart';

class Saturday extends StatefulWidget {
  const Saturday({Key? key}) : super(key: key);

  @override
  State<Saturday> createState() => _SaturdayState();
}

class _SaturdayState extends State<Saturday> with TickerProviderStateMixin{
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(
          milliseconds: 100,
        ),vsync: this
    );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(

        children: [

          Card(color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 4,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Column(children: [

                  Expander(controller: controller,
                      rotateArrow: true,
                      rotatingArrowSize: 40,
                      rotatingArrowColor: Colors.red,
                      arrowRotationDuration: const Duration(milliseconds: 100),
                      triggerWidgets: [
                        Container(height: 2,width: MediaQuery.of(context).size.width/1.25,
                          color: Colors.red,)
                      ]),

                  Expandable(
                    height: MediaQuery.of(context).size.height/10,
                    controller: controller,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      color: Colors.red,
                      child: const Text(
                        'Fuck You Shawon',
                        style: TextStyle(color: Colors.white,fontSize: 30),
                      ),
                    ),
                  ),




                ],),
              ),
            ),)

        ],

      ),
    );
  }
}



//
//
