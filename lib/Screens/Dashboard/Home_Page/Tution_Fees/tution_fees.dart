import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TutionFees extends StatefulWidget {
  TutionFees({Key? key}) : super(key: key);

  @override
  State<TutionFees> createState() => _TutionFeesState();
}

class _TutionFeesState extends State<TutionFees> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        body: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(125.0),
                border: TableBorder.all(
                    color: Colors.orangeAccent, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(
                     decoration: BoxDecoration(
                       color: Colors.deepPurpleAccent.shade100
                     ),
                      children: [
                    Column(children: [Padding(
                      padding: const EdgeInsets.only(top:8,left: 8,right: 8,bottom: 5),
                      child: Text('CGPA', style: TextStyle(fontSize:17.0)),
                    )
                    ]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('Addmission Fess', style: TextStyle(fontSize: 17.0)),
                    )
                    ]),
                    Column(
                        children: [Padding(
                          padding: const EdgeInsets.only(top: 8,right: 8,left: 8,bottom: 8),
                          child: Text('Semester Fees',textAlign: TextAlign.center , style: TextStyle(fontSize: 17.0)),
                        )
                    ]),
                    Column(
                        children: [Padding(
                          padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                          child: Text('Tution Fees', style: TextStyle(fontSize: 17.0)),
                        )
                    ]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Lab Fees', style: TextStyle(fontSize: 17.0)),
                    )
                    ]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Extra Curricular Fees', style: TextStyle(fontSize: 17.0)),
                    )
                    ]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Development Fees', style: TextStyle(fontSize: 17.0)),
                    )
                    ]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Grand Total Fees', style: TextStyle(fontSize: 17.0)),
                    )
                    ]),
                    ]),

                  // table data //
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      children: [
                    Column(children: [Padding(
                      padding:EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('5.00(Golden Both SSC & HSC)',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('15,000*1=15,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('16,000*1=16,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Full Scholarship',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Full Scholarship',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Full Scholarship',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Full Scholarship',
                           style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1,43,000',
                       style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                  ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      children: [
                    Column(children: [Padding(
                      padding:EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('5.00(Both SSC & HSC)',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('15,000*1=15,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('16,000*1=16,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1000*48=48,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,000',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,00',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('2500*8=20,000',
                           style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('2,19,000',
                       style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                  ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      children: [
                    Column(children: [Padding(
                      padding:EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('4.50  -  4.99',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('15,000*1=15,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('16,000*1=16,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1000*48=48,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,000',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('2500*8=20,000',
                           style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('2,76,600',
                       style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                  ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      children: [
                    Column(children: [Padding(
                      padding:EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('4.00  -  4.49',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('15,000*1=15,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('16,000*1=16,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1000*48=48,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,000',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('2500*8=20,000',
                           style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('2,91,000',
                       style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                  ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      children: [
                    Column(children: [Padding(
                      padding:EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('3.50  -  3.99',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                      child: Text('15,000*1=15,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('16,000*1=16,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1000*48=48,000',
                        style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,000',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('500*8=4,000',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('2500*8=20,000',
                           style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    )]),
                    Column(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('3,05,000',
                       style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    )]),
                  ]),

                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
