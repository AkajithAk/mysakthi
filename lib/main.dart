<<<<<<< Updated upstream
import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/screen/homebalance1.dart';
=======
import 'package:flutter/material.dart'; 

import 'view/screen/homebalance1.dart';
>>>>>>> Stashed changes

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
        
        // primarySwatch: Colors.blue,
      ),
<<<<<<< Updated upstream
      home:HomeBalance1(),
=======
      home: HomeBalance1(),
>>>>>>> Stashed changes
    );
  }
}
