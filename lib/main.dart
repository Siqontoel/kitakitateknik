import 'package:flutter/material.dart';
import 'package:gapurafashion/view/TampilanHome.dart';
import './login.dart';
import './GetStarted.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KKT',
     
      debugShowCheckedModeBanner: false,
      routes: {
         home: TampilanHome(),
        '/':(context)=> GetStarted(),
        '/login':(context)=> Login(),
    );
  }
}
