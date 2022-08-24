import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class StudentAttendanceDetailes extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: ColorChanger.scaffoldcolor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            // Image.network(
            //   "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
            //   fit: BoxFit.cover,
            //   height: double.infinity,
            //   width: double.infinity,
            //   scale: 1,
            // ),
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GlassmorphicContainer(
                        width: 350,
                        height: 200,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.bottomCenter,
                        border: 2,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFF97A9E1).withOpacity(0.1),
                              const Color(0xFF97A9E1).withOpacity(0.05),
                            ],
                            stops: const [
                              0.1,
                              1,
                            ]),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFCDC7CD).withOpacity(0.5),
                            const Color((0xFFCDC7CD)).withOpacity(0.5),
                          ],
                        ),
                        child:Column(
                          children: const [
                            SizedBox(height: 15,),
                            Text('Md.Abdur Rahman',style: (TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),),
                            SizedBox(height: 10,),
                            Text('170115',style: (TextStyle(color: Colors.white,fontSize: 18)),),
                              SizedBox(height: 10,),
                            Text('CSE',style: (TextStyle(color: Colors.white,fontSize: 18)),),
                            SizedBox(height: 10,),
                            Text('2017',style: (TextStyle(color: Colors.white,fontSize: 18)),),
                          ],
                        )),
                    const SizedBox(height: 20,),
                    GlassmorphicContainer(
                        width: 350,
                        height: 200,
                        borderRadius: 20,
                        blur: 20,
                        alignment: Alignment.bottomCenter,
                        border: 2,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFF97A9E1).withOpacity(0.1),
                              const Color(0xFF97A9E1).withOpacity(0.05),
                            ],
                            stops: const [
                              0.1,
                              1,
                            ]),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFCDC7CD).withOpacity(0.5),
                            const Color((0xFFCDC7CD)).withOpacity(0.5),
                          ],
                        ),
                        child:Column(
                          children: [
                            const SizedBox(height: 15,),
                            const Text('Image Processing',style: (TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),),
                            const SizedBox(height: 10,),
                            const Text('CSE - 412',style: (TextStyle(color: Colors.white,fontSize: 18)),),
                              const SizedBox(height: 10,),
                            const Text('Total Class 30',style: (TextStyle(color: Colors.white,fontSize: 18)),),
                            const SizedBox(height: 20,),
                               Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: const [
                                     Text('Present - 22',style: (TextStyle(color: Colors.white,fontSize: 18)),),
                                   SizedBox(width: 50,),

                                     Text('Absent - 8',style: (TextStyle(color: Colors.white,fontSize: 18)),),
                                   ],
                                 ),

                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
