import 'package:flutter/material.dart';

class AttendanceTake extends StatefulWidget {
  const AttendanceTake({Key? key}) : super(key: key);

  @override
  State<AttendanceTake> createState() => _AttendanceTakeState();
}

class _AttendanceTakeState extends State<AttendanceTake> {
  List<Map> studentList = [];

  //Create attendance list to hold attendance
  Map<String, String> attendance = {};

  List<String> labels = ['P', 'Ab'];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    //Use your own implementation to get students data
    //For deom I'm using offline data
    studentList.add({
      'id': 'ID1',
      'name': 'Naveen Avidi',
      'details': 'A Programmer'
      //other fields...
    });
    attendance['ID1'] = '';
    //or null if emtpy
    studentList.add({
      'id': 'ID2',
      'name': 'Ram',
      'details': 'An Engineer'
      //other fields...
    });
    attendance['ID2'] = '';
    //or null if emtpy
    studentList.add({
      'id': 'ID3',
      'name': 'Satish',
      'details': 'A Developer'
      //other fields...
    });
    attendance['ID3'] = '';
    //or null if emtpy
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title')),
      body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.cyan,
                    elevation: 10,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          studentList[index]['name'],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        //no pic available
                      ),
                      trailing: Column(
                        children: <Widget>[],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Phone: ' + studentList[index]['details'],
                              style: TextStyle(color: Colors.black)),
                          Text('Batches:',
                              style: TextStyle(color: Colors.black)),
                          // Container(
                          //   width: MediaQuery.of(context).size.width,
                          //   height: 50,
                          //   child: ListView.builder(
                          //     itemCount: studentList.students[index].batches.length,
                          //     itemBuilder: (context, batchIndex) {
                          //       return Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: <Widget>[
                          //           Text(studentList
                          //               .students[index].batches[batchIndex].name),
                          //         ],
                          //       );
                          //     },
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: labels.map((s) {
                                return Column(
                                  children: <Widget>[
                                    Radio(
                                      groupValue:
                                          attendance[studentList[index]['id']],
                                      value: s,
                                      onChanged: (newValue) {
                                        setState(() {
                                          print(s);
                                          attendance[studentList[index]['id']] = s;
                                        });
                                      },
                                    ),
                                    Text(s,
                                        style: TextStyle(color: Colors.black))
                                  ],
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
