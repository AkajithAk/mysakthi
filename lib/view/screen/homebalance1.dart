import 'package:flutter/material.dart';

class HomeBalance1 extends StatefulWidget {
  const HomeBalance1({ Key? key }) : super(key: key);

  @override
  _HomeBalance1State createState() => _HomeBalance1State();
}

class _HomeBalance1State extends State<HomeBalance1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Column(
            children: [
             
              Text("WALLET BALANCE",style: TextStyle(fontSize: 20),),
              
               Container(
   width: double.infinity,
   child: Text(
      'something.xyz',
      // textAlign: TextAlign.center,
   ),
),
            ],
          ),
        ),
      ),
      
    );
  }
}