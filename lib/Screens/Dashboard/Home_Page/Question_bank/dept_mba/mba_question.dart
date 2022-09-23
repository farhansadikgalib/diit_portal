import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

class MBADepertment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      appBar: AppBar(
        backgroundColor: ColorChanger.appbarColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('MBA',
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "azonix",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("QuestionBank").doc('pA9XTeacxLWEJ3eO4rRt').collection('MBA').snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if(snapshot.hasData) {
                  final snap = snapshot.data!.docs;
                  return ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: snap.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white24,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.white10,
                            width: 5, //<-- SEE HERE
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 5,
                        child: SizedBox(
                          height: 75,
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    snap[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.white70,
                                        fontFamily: 'Baloo'),
                                  ),
                                ),
                                // GFButton(
                                //   size: 50,
                                //   color: Colors.green,
                                //   onPressed: () {
                                //
                                //   },
                                //   text: "View",
                                //   textStyle: const TextStyle(
                                //       fontWeight: FontWeight.w500,
                                //       fontSize: 18,
                                //       fontFamily: 'Baloo'),
                                //   position: GFPosition.end,
                                //   icon: const Icon(
                                //     Icons.arrow_downward_outlined,
                                //     size: 22,
                                //     color: Colors.white,
                                //   ),
                                //   type: GFButtonType.solid,
                                //   shape: GFButtonShape.square,
                                // ),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        var first = snap[index]['link'];
                                        print(first);
                                        Get.toNamed('/pdf_viewPage',
                                            arguments: [first]);
                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [

                                          Text("View",
                                            style:  TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                                fontFamily: 'Baloo'),),
                                          Icon(
                                            Icons.arrow_downward_outlined,
                                            size: 22,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      style: ButtonStyle(
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white12),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(12.0),
                                                  side: BorderSide(
                                                      color: Colors.white10))))),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Scaffold(
                    backgroundColor: ColorChanger.scaffoldcolor,
                    body: Center(
                      child: Lottie.asset('assets/lotti_file/loading_animation.json',
                          height: 100, width: 100),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
