import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass_kit/glass_kit.dart';

class SubjectDetails extends StatefulWidget {
  const SubjectDetails({Key? key}) : super(key: key);

  @override
  State<SubjectDetails> createState() => _SubjectDetailsState();
}

class _SubjectDetailsState extends State<SubjectDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:ColorChanger.scaffoldcolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             GlassContainer(
               height: MediaQuery.of(context).size.height/3,
               width: MediaQuery.of(context).size.width,
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Department : CSE',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),Text('Course Name : Network Security',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text('Batch : 17th',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text('Section : B',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text('Classes Taken : 28 / 30',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),SizedBox(height: 8,),
                      Text('Quizes : 2',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),SizedBox(height: 8,),
                      Text('Presentation : 1',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),SizedBox(height: 8,),
                      Text('Assingment : 2',
                        style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
             ),
             SizedBox(height: 50,),
             SizedBox(
               width: 200,
               child: ElevatedButton(onPressed: ()=>Get.toNamed('/DateAttendance'),
                   child: Text('Next',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
             ),
           ],
        ),
      ),
    );
  }
}
