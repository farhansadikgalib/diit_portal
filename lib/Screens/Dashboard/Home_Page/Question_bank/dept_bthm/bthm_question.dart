import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getwidget/getwidget.dart';

class BthmDepertment extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("QuestionBank").doc('pA9XTeacxLWEJ3eO4rRt').collection('BTHM').snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if(snapshot.hasData) {
                  final snap = snapshot.data!.docs;
                  return ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: snap.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
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
                                Text(snap[index]['name'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      fontFamily: 'Baloo'),
                                ),
                                GFButton(
                                  size: 50,
                                  color: Colors.green,
                                  onPressed: () {
                                    var first= snap[index]['link'];
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
                      );

                    },
                  );
                } else {
                  return const SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
