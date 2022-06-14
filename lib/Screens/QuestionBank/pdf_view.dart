// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import 'package:get/get.dart';
//
// class pdf_viewPage extends StatefulWidget {
//   const pdf_viewPage({Key? key}) : super(key: key);
//
//   @override
//   State<pdf_viewPage> createState() => _pdf_viewPageState();
// }
//
// class _pdf_viewPageState extends State<pdf_viewPage> {
//   final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Syncfusion Flutter PDF Viewer'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(
//               Icons.bookmark,
//               color: Colors.white,
//               semanticLabel: 'Bookmark',
//             ),
//             onPressed: () {
//               _pdfViewerKey.currentState?.openBookmarkView();
//             },
//           ),
//         ],
//       ),
//       body: SfPdfViewer.network(
//         'https://firebasestorage.googleapis.com/v0/b/diit-portal.appspot.com/o/QuestionBank%2F1stsemester.pdf?alt=media&token=b26875f5-56fa-47af-b46e-c8c067f83bb2',
//         key: _pdfViewerKey,
//       ),
//     );
//   }
// }
