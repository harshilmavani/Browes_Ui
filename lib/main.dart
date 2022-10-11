import 'package:flutter/material.dart';

import 'Bottam.dart';
import 'Detail_Page.dart';
import 'Home_Page.dart';
import 'mediaquery_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottam(),
    );
  }
}
