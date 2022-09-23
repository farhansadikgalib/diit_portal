import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:url_launcher/url_launcher.dart';

class FacultyProfile extends StatelessWidget {

  CollectionReference ref = FirebaseFirestore.instance.collection('Faculty');


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: ref.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.docs.length == 0) {
            return Scaffold(
              backgroundColor: const Color.fromRGBO(1, 60, 88, 1),
              body: Center(
                child: Text(
                  "No data is here!",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          }

          return Scaffold(
              backgroundColor: const Color.fromRGBO(1, 60, 88, 1),
              body: ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final snap = snapshot.data!.docs;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.orangeAccent,
                            ),
                            borderRadius: BorderRadius.circular(20.0),

                          ),
                           color: Color.fromRGBO(194, 205, 255,1),
                          // color: Colors.orangeAccent,
                          elevation: 10,
                          child: Padding(
                            padding:
                            EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: SizedBox(
                              // height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [

                                  //  CircleAvatar(
                                  //    radius: 55,
                                  //    backgroundImage:
                                  //    NetworkImage(snap[index]['img']),
                                  //    backgroundColor: Colors.transparent,
                                  //
                                  // ),

                                  CachedNetworkImage(
                                    imageUrl: snap[index]['img'],
                                    imageBuilder: (context, imageProvider) => Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: imageProvider, fit: BoxFit.fill),
                                      ),
                                    ),
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                  ),






                                  SizedBox(
                                    height: 5,
                                  ),

                                  Text(
                                    snap[index]['name'],
                                    textAlign: TextAlign.center,

                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),



                                  InkWell(
                                    onTap: (){
                                      launch("tel://${snap[index]
                                      ['phone']}");
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.call,
                                          size: 22,
                                          color: Colors.black,
                                        ),
                                        SizedBox(width: 5,),
                                        Text(
                                          snap[index]['phone'],
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 5,
                                  ),


                                  Text(
                                    snap[index]['title'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),

                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    snap[index]['edu'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ));
        } else {
          return Scaffold(
            backgroundColor: ColorChanger.scaffoldcolor,
            body: Center(
              child: Lottie.asset('assets/lotti_file/loading_animation.json',height:100,width: 100),
            ),
          );
        }
      },
    );

  }
}
