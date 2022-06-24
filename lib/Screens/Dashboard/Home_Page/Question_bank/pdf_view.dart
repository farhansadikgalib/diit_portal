import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf_viewPage extends StatefulWidget {
  const pdf_viewPage({Key? key}) : super(key: key);

  @override
  State<pdf_viewPage> createState() => _pdf_viewPageState();
}

class _pdf_viewPageState extends State<pdf_viewPage> {


  final receivePDF = Get.arguments[0];

  RxBool _loaded = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: SfPdfViewer.network(
                  '${receivePDF.toString()}',
                  onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                    _loaded.value = true;
                  },
                ),
              ),
            ],
          )),
    );
  }
}
