import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TOTALDUE extends StatefulWidget {
  const TOTALDUE({Key? key}) : super(key: key);

  @override
  State<TOTALDUE> createState() => _TOTALDUEState();
}

class _TOTALDUEState extends State<TOTALDUE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorChanger.scaffoldcolor,
        appBar:AppBar(title: Text('Due Information',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),
        ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor:ColorChanger.scaffoldcolor,
        ) ,
        body:Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Card(
                color: Colors.lightBlueAccent,
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(200.0),
                  border: TableBorder.all(
                      color: Colors.orangeAccent,
                      style: BorderStyle.solid,
                      width: 2),
                  columnWidths: {
                    0:FractionColumnWidth(0.34),
                    1:FractionColumnWidth(0.34),
                    2:FractionColumnWidth(0.32),
                  },

                  children: [

                    TableRow(
                        decoration: BoxDecoration(color: Colors.deepPurpleAccent.shade400),
                        children: [
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 8, left: 8, right: 8, bottom: 5),
                              child: Text(
                                'Date',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          Column(children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8, left: 7, right: 8, bottom: 8),
                              child: Text(
                                'Paid',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          Column(children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 8, left: 7, right: 8, bottom: 8),
                              child: Text(
                                'Type',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ]),

                  ],
                ),
              ),
            ),
            SizedBox(height: 2,),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    // final snap = snapshot.data!.docs;

                    return Padding(
                      padding: const EdgeInsets.only(top:5,left: 10, right: 10),
                      child: Card(

                        child:Table(
                          defaultColumnWidth: FixedColumnWidth(180.0),
                          border: TableBorder.all(
                              color: Colors.orangeAccent,
                              style: BorderStyle.solid,
                              width: 2),
                          columnWidths: {
                            0:FractionColumnWidth(0.25),
                            1:FractionColumnWidth(0.30),
                            2:FractionColumnWidth(0.25),
                          },

                          children: [

                            TableRow(
                                decoration: BoxDecoration(color: Colors.teal.shade400),
                                children: [
                                  Column(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8, left: 8, right: 8, bottom: 5),
                                      child: Text(
                                        '10/06/22',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ]),
                                  Column(children: [
                                    Padding(
                                      padding:  EdgeInsets.only(
                                          top: 8, left: 7, right: 8, bottom: 8),
                                      child: Text(
                                       '-',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ]),
                                  Column(children: [
                                    Padding(
                                      padding:  EdgeInsets.only(
                                          top: 8, left: 7, right: 8, bottom: 8),
                                      child: Text(
                                       '-',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ]),
                                ]),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),

          ],
        )
    );
  }
}
