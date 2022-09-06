import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class TutionFees extends StatefulWidget {
  TutionFees({Key? key}) : super(key: key);

  @override
  State<TutionFees> createState() => _TutionFeesState();
}

class _TutionFeesState extends State<TutionFees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CSE //
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height / 15,
                  ),
                  Text(
                    'Computer Science and Engineering',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Credit Hours  :',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        '  138',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Duration  :',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        '  4 Years',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Semester  :',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        '  8',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(130.0),
                    border: TableBorder.all(
                        color: Colors.orangeAccent,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.teal.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'CGPA',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  'Addmission Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 7, right: 8, left: 8, bottom: 8),
                                child: Text(
                                  'Semester Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  'Tution Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Lab Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Extra Curricular Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Development Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Grand Total Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      // table data //
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.green,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '5.00(Golden Both SSC & HSC)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 5, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '1,43,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '5.00(Both SSC & HSC)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '1000*48=48,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,00',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,19,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '4.50  -  4.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '2200*48=1,05,600',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,76,600',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.teal.shade400,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '4.00  -  4.49',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '2500*48=1,20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,91,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '3.50  -  3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '2800*48=1,34,400',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '3,05,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                    ],
                  ),
                ),
              ),
              // CSE //
              SizedBox(
                height: 25,
              ),
              // BBA //
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      'Bachelor of Business Administration',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Credit Hours  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  126',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Duration  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  4 Years',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Semester  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  8',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(130.0),
                    border: TableBorder.all(
                        color: Colors.orangeAccent,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.teal.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'CGPA',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  'Addmission Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 7, right: 8, left: 8, bottom: 8),
                                child: Text(
                                  'Semester Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  'Tution Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Extra Curricular Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Development Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Grand Total Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      // table data //
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.green,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '5.00(Golden Both SSC & HSC)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 5, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('Full Scholarship',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '1,43,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '5.00(Both SSC & HSC)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '800*48=38,400',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,00',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,05,400',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '4.50  -  4.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '1,500*48=72,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,39,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.teal.shade400,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '4.00  -  4.49',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '1,710*48=82,080',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,49,080',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '3.50  -  3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '1,920*48=92,160',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,59,160',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                    ],
                  ),
                ),
              ),
              // BBA //
              SizedBox(
                height: 25,
              ),
              // THM //
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      'Tourism & Hospitality Management',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Credit Hours  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  130',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Duration  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  4 Years',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Semester  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  8',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(130.0),
                    border: TableBorder.all(
                        color: Colors.orangeAccent,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.teal.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 5),
                                child: Text(
                                  'CGPA',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  'Addmission Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 7, right: 8, left: 8, bottom: 8),
                                child: Text(
                                  'Semester Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  'Tution Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Extra Curricular Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Development Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Grand Total Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      // table data //
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.green,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '5.00(Golden Both SSC & HSC)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 5, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('Full Scholarship',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Full Scholarship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '1,43,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '5.00(Both SSC & HSC)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '700*48=33,600',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,00',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,00,600',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '4.50  -  4.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '1100*48=52,800',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,19,800',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.teal.shade400,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '4.00  -  4.49',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '1300*48=62,400',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,29,400',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '3.50  -  3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '16,000*8=1,28000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 7, bottom: 8),
                                child: Text(
                                  '1600*48=76,800',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            // Column(children: [Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text('500*8=4,000',
                            //     style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                            // )]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '500*8=4,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2500*8=20,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2,43,800',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                    ],
                  ),
                ),
              ),
              // THM //

              SizedBox(
                height: 25,
              ),
              // MBA //
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      'Master of Business Administrtion',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Credit Hours  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  36',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Duration  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  1 Year',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Semester  :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          '  2',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(130.0),
                    border: TableBorder.all(
                        color: Colors.orangeAccent,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.teal.shade400),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 8, bottom: 8),
                                child: Text(
                                  'Addmission Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 7, right: 8, left: 8, bottom: 8),
                                child: Text(
                                  'Semester Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  'Tution Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Development Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Grand Total Fees',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                      // table data //
                      TableRow(
                          decoration: BoxDecoration(
                            color: Colors.green,
                          ),
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 8),
                                child: Text(
                                  '15,000*1=15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 7, right: 5, bottom: 8),
                                child: Text(
                                  '15,000*2=30,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '3000*12=36,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '4000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '85,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]),
                    ],
                  ),
                ),
              ),
              // MBA //
              SizedBox(
                height: Get.height / 7,
              ),
            ]),
      ),
    );
  }
}
