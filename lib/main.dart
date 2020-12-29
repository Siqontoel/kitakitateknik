import 'package:flutter/material.dart';
import 'package:gapurafashion/view/TampilanHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KKT',
      home: TampilanHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
