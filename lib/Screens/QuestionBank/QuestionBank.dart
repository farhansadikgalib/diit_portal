import 'dart:io';

import 'package:diit_portal/Screens/QuestionBank/pdf_view.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class QuestionBankX extends StatefulWidget {
  @override
  State<QuestionBankX> createState() => _QuestionBankXState();
}

class _QuestionBankXState extends State<QuestionBankX> {
  late Future<ListResult> _futurefiles;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futurefiles = FirebaseStorage.instance.ref('/QuestionBank').listAll();
  }


  // void openPDF(BuildContext context, File file) => Navigator.of(context).push(
  //   MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  // );
  // static Future<File> loadFirebase(String url) async{
  //   final refPDF = FirebaseStorage.instance.ref().child(url);
  //   final bytes = await refPDF.getData();
  //   return _storefile(url,bytes);
  // }

  Future downloadFile(Reference ref) async{
    final url= await ref.getDownloadURL();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}');


    // //
    // final path = await getTemporaryDirectory();
    // //
    // await Dio().download(url, path);


    // await FileSaver(
    //   fileTypes: const ['download','pdf'],
    //   initialFileName: 'Untitled File',
    // );


  await ref.writeToFile(file);


    Get.snackbar(
      'File Manager!',
      ' ${ref.name} Downlaoded',
      colorText: Colors.white,
      backgroundColor: Colors.lightGreen,
      margin: EdgeInsets.only(top: 30, bottom: 30),
      snackPosition: SnackPosition.BOTTOM,
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOutBack,
    );


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ListResult>(
        future: _futurefiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final files = snapshot.data!.items;
            return ListView.builder(
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final file = files[index];
                  return ListTile(
                    title: Text(file.name),
                    trailing: IconButton(
                      //   onPressed: () {
                      //
                      // downloadFile(file);
                      //
                      //   },
                        onPressed: () async {
                          // final url = 'sample.pdf';
                          // // final file = await PDFApi.loadFirebase(url);
                          //
                          // Get.to(pdf_viewPage());
                          // if (file == null) return;
                          // openPDF(context, file);
                        },
                        icon: Icon(
                          Icons.download,
                          color: Colors.black,
                        )),
                  );
                });
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error Occur'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
