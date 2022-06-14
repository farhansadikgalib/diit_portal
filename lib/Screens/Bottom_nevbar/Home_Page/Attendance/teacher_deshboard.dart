
import 'package:flutter/material.dart';

class TeacherDashbord extends StatelessWidget {
  const TeacherDashbord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.indigo,
            )
          ],        ),
      ),
    );
  }
}
