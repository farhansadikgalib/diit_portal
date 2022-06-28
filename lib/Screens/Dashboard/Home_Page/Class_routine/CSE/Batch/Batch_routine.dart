

import 'package:flutter/material.dart';

class BatchRoutine extends StatelessWidget {
  const BatchRoutine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
          ],
        ),
      ),

    );
  }
}
