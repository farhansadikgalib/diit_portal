import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CSERoutine extends StatelessWidget {
  final Stream<QuerySnapshot> _CRStream = FirebaseFirestore.instance.collection('ClassRoutine').snapshots();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StreamBuilder<QuerySnapshot>(
          stream: _CRStream,
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator(color: Colors.orange,));
            }
            if(snapshot.connectionState==ConnectionState.active){
              QuerySnapshot? querySnapshot = snapshot.data;
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                return Column(
                  children: [
                    const SizedBox(height: 5,),
                    Card(
                      elevation: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 75,
                        width: double.infinity,
                        decoration: const BoxDecoration(
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
                              const Text(
                                // "${data['1st Semester']}"
                                '17th Batch' ,
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
                                  Get.toNamed('/ClassRoutineViewer',arguments: [data['1st Semester']]);
                                },
                                text: "View",
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '18th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '19th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '20th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '21th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '22th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '23th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '24th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
                        decoration: const BoxDecoration(
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
                              const Text(
                                '25th Batch' ,
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Baloo'),
                                position: GFPosition.end,
                                icon: const Icon(
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
