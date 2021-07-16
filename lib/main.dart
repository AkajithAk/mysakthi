import 'package:flutter/material.dart';
import 'package:mysakthi/view/screen/splashscreen.dart';
import 'package:mysakthi/view/screen/splashscreen2.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySakthi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
                  bodyText1:TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  //fontWeight: FontWeight.w700,
                  color: Colors.black),
                  button: TextStyle(fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue) ,
                  bodyText2: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white))

          // primarySwatch: Colors.blue,
          ),
      home: Splashscreen2()
    );
  }
}
