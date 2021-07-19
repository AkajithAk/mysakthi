import 'package:flutter/material.dart';
import 'package:mysakthi/view/screen/menusettings.dart';
import 'package:mysakthi/view/screen/transactionspage.dart';
import 'package:mysakthi/view/widget/latestjoining.dart';
import 'package:mysakthi/view/widget/shopping.dart';
import 'package:mysakthi/view/widget/statistic.dart';
import 'package:mysakthi/view/widget/transactions.dart';

class HomeBalance1 extends StatefulWidget {
  const HomeBalance1({ Key? key }) : super(key: key);

  @override
  _HomeBalance1State createState() => _HomeBalance1State();
}

class _HomeBalance1State extends State<HomeBalance1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/background3.png",),fit: BoxFit.cover,)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:40.0),
            child: Column(
              children: [
                
               
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){ 
                            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MenuSettings()),
  );
                        },
                        child: Image.asset("assets/images/menu.png")),
                      SizedBox(width: 90,),
                      Text("WALLET BALANCE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                 Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(30),
                     topRight: Radius.circular(30),
                   ),color: Colors.blue[900],),
                   
                   height: 150,
                  width: 340,
          //  width: double.infinity,
           child: Column(
           children: [
           SizedBox(height: 20,),
           Text(
              ' \$10,765',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
           ),
           Row( 
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
                  ' \$13,765 ',style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
             ),
              SizedBox(width: 10,),
             Text(
                  'Current balance',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
             ),
           ],
           ),
           ],
           ),
        ),
         Transform.translate(
                            offset: Offset(0,-50),child: Statistic()),

                            InkWell(
                              onTap: (){
                                 
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Transactionpage()),
  );
                              },
                              child: Transactions()),
                            SizedBox(height: 30,),
                            Shoppings(),
                             SizedBox(height: 30,),
                            LatestJoinings(),
                            
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}