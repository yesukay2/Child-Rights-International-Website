import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdfWidget extends StatelessWidget {
   pdfWidget({
    super.key,
    required this.pdfLink,
    required this.context,
  });

  String? pdfLink;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('PDF Document'),
      ),
      // body: SfPdfViewer.network('asset/pdf/ALIGNING-ANY-COST-OF-FREE-SHS-WILL-MAKE-IT-A-FAILED-POLICY_CRI.pdf'),
      body: SfPdfViewer.network(pdfLink!),
    ));
  }
}
