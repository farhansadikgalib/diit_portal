import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateAttendance extends StatefulWidget {
  const DateAttendance({Key? key}) : super(key: key);

  @override
  State<DateAttendance> createState() => _DateAttendanceState();
}

class _DateAttendanceState extends State<DateAttendance> {

   List<String> Classno =["1","2",'3','4','5','6','7','8','9','10',];
   List<String> ClassDate = ['06/07/2022','10/07/2022','14/07/2022','18/07/2022','22/07/2022','26/07/2022','30/07/2022','04/08/2022','08/08/2022','12/08/2022',];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        appBar: AppBar(
          backgroundColor: ColorChanger.appbarColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('View Attendance',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "azonix",
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex:1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    height: Get.height/10,

                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white10,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color : Colors.white12,
                      elevation: 3,
                      shadowColor: Colors.white10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(' Class No',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white70),),
                          Text('P/A : ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white70),),
                          Text(' Class Date',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white70),),

                        ],
                      ),
                    ),
                  ),
                )),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: ListView.builder(
                  itemCount: Classno.length,
                    itemBuilder: (context,index){
                  return InkWell(
                    onTap: ()=>Get.toNamed('/ViewStudentAttendance'),
                    child: Container(
                        height: 80,
                        width: 100,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white10,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color : Colors.white12,
                          elevation: 3,
                          shadowColor: Colors.white10,
                          child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(' ${Classno[index]}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white70),),
                              Text('27/23',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white70),),
                              Text(' ${ClassDate[index]}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white70),),

                            ],
                          ),

                        ),
                    ),
                  );
                   }
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
