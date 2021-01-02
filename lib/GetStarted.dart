
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[

      Container(

        height: MediaQuery.of(context).size.height / 2.4,
        decoration: BoxDecoration(
          color: Colors.white10,
          image: DecorationImage(
            image: AssetImage('Pictures/komodo.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),

    Text(
      "Selamat datang di Platform belajar KITA-KITA TEKNIK",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color:Colors.black,
            fontSize: 16),

      ),
    Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(
          "Find your problem solution here and keep you away from hit by academic problem!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            ),
        ),
      ),

    Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30),

      child: RaisedButton(
        onPressed: (){
        Navigator.pushReplacementNamed(context, '/login');
        },
      shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(80.0),
      ),

      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color> [Colors.green, Colors.blue],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(80.0),
          ),
        ),

      constraints: const BoxConstraints(
        minWidth: 150.0,
        minHeight: 36.0,
      ),
      alignment: Alignment.center,
      child: const Text(
        'AYO MULAI',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      ),
      ),
      ),

    Spacer(),
      Container(

        height: MediaQuery.of(context).size.height / 2.5,
        decoration: BoxDecoration(
          color: Colors.white10,
          image: DecorationImage(
            image: AssetImage('Pictures/KKTOFICIAL.png'),
            fit: BoxFit.cover,


          ),
    ),
    ),
    ]
    ),
    ),
    );
  }
}
