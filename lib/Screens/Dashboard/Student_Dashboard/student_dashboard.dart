import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:multi_charts/multi_charts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentDashBoard extends StatefulWidget {
  @override
  State<StudentDashBoard> createState() => _StudentDashBoardState();
}

class _StudentDashBoardState extends State<StudentDashBoard> {
  late DatabaseReference ref = FirebaseDatabase.instance.ref();
  late SharedPreferences logindata;
  late String email;
  late String id;
  late String batch;
  String? Payable, Paid, Due, Fine;

  // reference().child('Student').child('batch17').child('170001');
  @override
  void initState() {
    userData();
  }

  userData() async {
    logindata = await SharedPreferences.getInstance();
    email = logindata.getString('user_email')!;
    id = logindata.getString('user_id')!;

    batch= id.substring(0,2);

    print(id);
    print(batch);
    print(email);
    getFirebaseData();
  }

  getFirebaseData() {
      ref
        .child('Student')
        .child('batch'+batch)
        .child(id).child('payment')
        .once()
        .then((DatabaseEvent databaseEvent) {
      print(databaseEvent.snapshot.value.toString());


      Due= databaseEvent.snapshot.value! as String?;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: SizedBox(
                height: 300,
                width: 300,
                child: PieChart(
                  values: [15, 75, 5, 5],
                  labels: [
                    "Payable",

                    "Paid",
                    "Due",
                    "Fine",
                  ],
                  legendTextColor: Colors.white,
                  sliceFillColors: [
                    Color(0xffCDC845),
                    Color(0xff81E85E),
                    Color(0xff5DD8D0),
                    Color(0xbc4fa4cd),
                  ],
                  animationDuration: Duration(milliseconds: 2000),
                  legendPosition: LegendPosition.Right,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xffCDC845),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1, child: Image.asset('assets/taka.png')),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '2,80,000/-',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Payable',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xff81E85E),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1, child: Image.asset('assets/taka.png')),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '2,00,000/-',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Paid',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xff5DD8D0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1, child: Image.asset('assets/taka.png')),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '80,000/-',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Due',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xbc4fa4cd),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1, child: Image.asset('assets/taka.png')),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '0/-',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Fine',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
