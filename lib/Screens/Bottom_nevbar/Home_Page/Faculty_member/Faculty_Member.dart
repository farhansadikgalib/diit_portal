import 'package:flutter/material.dart' ;

class FacultyProfile extends StatelessWidget {
  const FacultyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
               Container(
                 height: 260,
                 width: double.infinity,
                 child: Card(

                   elevation: 5,
                   child: Column(
                     children: [
                       Expanded(
                         flex: 1,
                         child: Container(
                           width: double.infinity,
                           color: Color(0xff909E89),
                              child: CircleAvatar(
                                radius: 30,
                                child: ClipOval(
                                  child:  Image.asset('assets/teacher/cse/principal_sir.jpg',fit: BoxFit.fill,),
                                )
                              ),
                         ),
                       ),

                       Expanded(
                         flex: 1,
                         child: Container(
                           width: double.infinity,
                           color: Color(0xa2f4deeb),
                           child: Column(
                             children: [
                               Text('Prof. Dr. Mohammad Shakhawat Hossain',
                                 style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                               ),
                               SizedBox(height: 5,),
                               Text('Principal,DIIT',
                                 style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                               ),
                               SizedBox(height: 5,),
                               Text('M.Com(Finance),MBA(Markting),DBA(In Progress), DU',
                                 style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.call,size: 20,color: Colors.red,),
                                   SizedBox(width: 5,),
                                   Text('+8801713493160',
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
              SizedBox(height: 5,),
              Container(
                height: 260,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(

                        flex: 1,
                        child: Container(

                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(

                              radius: 60,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/cse/imran.jpg',fit: BoxFit.fill,width: 130,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Md.Imran Hossain',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer & Coordinator, Dept of CSE',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('PGD in IT (DU) and BSc. & MSc. in Mathematics (SUST)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801558347201',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 260,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/cse/Poly_bhoumik.png',width: 126,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Poly Bhoumik',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text(' Lecturer, Dept of CSE',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BSc. in CSE (IUBAT) & MSc. in CSE (JU)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8800000000000',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 260,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/cse/Saidur_Rahman.jpg',width: 126,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Md. Saidur Rahman',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer, Dept of CSE',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BSc. in EEE (AIUB) & MSc. in DIU',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8800000000000',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 260,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/cse/mijanur.png',width: 126,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Mizanur Rahman',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer, Dept of CSE',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('Bsc.in ICE (PUST) & Msc in CSE(RUET)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801521121738',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 260,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/cse/Nusrhat_Jahan_Sarker.png',width: 126,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Nusrhat Jahan Sarker',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer, Dept of CSE',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('B.Sc in CSE (NU) & M.Sc in CSE (Continuing) (NU)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801621341867',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/mokarramsir.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Md. Mokarram Hossainr',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Associate Professor, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BSc. & MSc. in Statistics (JU), MBA (DIU),\n History of Philosophy (NUST)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801552380849',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/robi_das.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Lakkhan Chandra Robidas',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Assistant Professor & Head of the Dept. BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA(NU),MBA(DIU), Marketing',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801919491005',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/Sabrina_Qudir.png',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Mst. Sabrina Quadir',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Senior Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('M.Phil(1st Part) (JU), MA & BA(English) (IU)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801796584546',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/israt_nu.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Israt Moriom Khan',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Senior Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA (NU), MBA (DIU), Marketing',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801673662000',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/nipa_nu.png',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Shakila Jahan Nipa',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Senior Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA & MBA (Marketing), National University',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8800000000000',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/russel_sir_.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Aminul Haque Russel',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Senior Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA (NU) & MBA (DIU) in Finance',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801720206512',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/atikul-bba.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Md. Sanowar Hossain Atiq',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Senior Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA & MBA (Accounting), Rajshahi University',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801717928680',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/fahmida.png',width: 135,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Fahmida Akter',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text(' Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA(NU),MBA(DIU), Finance',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801717448287',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/Antara.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Antara Saha',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA (Management) & MBA (HRM), Jagannath University',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801681919133',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/Asma_nu.png',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Asma-Ul-Husna',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer, Dept of BBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA & MBA(Banking), University of Dhaka',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801721336277',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/Md._Omar_Faruk.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Md. Omar Faruk',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Assistant Professor & Head of Department,MBA',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA & MBA (Accounting), University of Dhaka',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801683689117',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/bodruzdzza.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Mohammad Badruddoza Talukder',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Assistant Professor & Head of Department,THM',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BHM & MHM, MBA (HRM), M.Phil (Pursuing)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801911620004',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/rony-bba.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Md. Jahidul Islam Rony',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Senior Lecturer & Coordinator, Dept of THM',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA & MBA (Finance), Daffodil International University',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801719678798',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/Shaifullah_Rabbi.png',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Md. Shaifullar Rabbi',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer, Dept of THM',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA & MBA, Major in THM, faculty of Business Studies,(DU)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801520102045',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 275,
                width: double.infinity,
                child: Card(

                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xff909E89),
                          child: CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child:  Image.asset('assets/teacher/bba&bthm/Tanjila.jpg',width: 133,fit: BoxFit.fill,),
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Color(0xa2f4deeb),
                          child: Column(
                            children: [
                              Text('Tanjila Afroz Mou',
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins',color: Color(0xff0D7A46)),
                              ),
                              SizedBox(height: 5,),
                              Text('Lecturer, Dept of THM',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Poppins',color: Colors.red),
                              ),
                              SizedBox(height: 5,),
                              Text('BBA & MBA, Major in THM, (DU)',
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Color(0xffB59E28)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,size: 20,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('+8801933762675',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,fontFamily: 'Poppins',color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
