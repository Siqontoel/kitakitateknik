import 'package:flutter/material.dart';
import './login.dart';
import './GetStarted.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> GetStarted(),
        '/login':(context)=> Login(),
      },
    );
  }
}
