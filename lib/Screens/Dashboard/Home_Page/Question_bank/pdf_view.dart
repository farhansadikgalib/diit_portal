import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf_viewPage extends StatefulWidget {
  const pdf_viewPage({Key? key}) : super(key: key);

  @override
  State<pdf_viewPage> createState() => _pdf_viewPageState();
}

class _pdf_viewPageState extends State<pdf_viewPage> {



  RxBool _loaded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text('Syncfusion Flutter PDF Viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
                semanticLabel: 'Bookmark',
              ),
              onPressed: () {
                // _pdfViewerKey.currentState?.openBookmarkView();
              },
            ),
          ],
        ),
        // body: SfPdfViewer.network(
        //   'https://firebasestorage.googleapis.com/v0/b/diit-portal.appspot.com/o/QuestionBank%2F1stsemester.pdf?alt=media&token=b26875f5-56fa-47af-b46e-c8c067f83bb2',
        //   key: _pdfViewerKey,

        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: SfPdfViewer.network(
                'https://firebasestorage.googleapis.com/v0/b/diit-portal.appspot.com/o/QuestionBank%2F2ndsemester.pdf?alt=media&token=444c9313-bcab-4128-8b42-10998070a7ea',
                onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                  _loaded.value = true;
                },
              ),
            ),
          ],
        ));
  }
}
