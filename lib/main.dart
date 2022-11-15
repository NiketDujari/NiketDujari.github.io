import 'package:flutter/material.dart';
import 'package:navya_bday/homePage.dart';
import 'package:navya_bday/introBanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroBanner(),
    );
  }
}
