import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class MBADepertment extends StatelessWidget {
  final Stream<QuerySnapshot> _QBStream = FirebaseFirestore.instance.collection('QuestionBank').snapshots();


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: StreamBuilder<QuerySnapshot>(
          stream: _QBStream,
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(color: Colors.orange,));
            }
            if(snapshot.connectionState==ConnectionState.active){
              QuerySnapshot? querySnapshot = snapshot.data;
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                return Column(
                  children: [
                    SizedBox(height: 5,),
                    Card(
                      elevation: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.orange, width: 4),
                            left: BorderSide(color: Colors.orange, width: 4),
                            right: BorderSide(color: Colors.orange, width: 4),
                            bottom: BorderSide(color: Colors.orange, width: 4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // "${data['1st Semester']}"
                                '1st Semester' ,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                              ),
                              GFButton(
                                size: 50,
                                color: Colors.green,
                                onPressed: () {
                                  var first= data['1st Semester'];
                                  print(first);
                                  Get.toNamed('/pdf_viewPage',arguments: [data['1st Semester']]);
                                },
                                text: "View",
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: Icon(
                                  Icons.arrow_downward_outlined,
                                  size: 22,
                                  color: Colors.white,
                                ),
                                type: GFButtonType.solid,
                                shape: GFButtonShape.standard,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.orange, width: 4),
                            left: BorderSide(color: Colors.orange, width: 4),
                            right: BorderSide(color: Colors.orange, width: 4),
                            bottom: BorderSide(color: Colors.orange, width: 4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2nd Semester' ,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                              ),
                              GFButton(
                                size: 50,
                                color: Colors.green,
                                onPressed: () {
                                  var first= data['2nd Semester'];
                                  print(first);
                                  Get.toNamed('/pdf_viewPage',arguments: [first]);
                                },
                                text: "View",
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: Icon(
                                  Icons.arrow_downward_outlined,
                                  size: 22,
                                  color: Colors.white,
                                ),
                                type: GFButtonType.solid,
                                shape: GFButtonShape.standard,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],

                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
