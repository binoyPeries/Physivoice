import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(PhysivoiceApp());
}

class PhysivoiceApp extends StatelessWidget {
  const PhysivoiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Container(),
        ),
      ),
    );
  }
}
