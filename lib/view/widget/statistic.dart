import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Statistic extends StatefulWidget {
  const Statistic({ Key? key }) : super(key: key);

  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.height!*35,
      width: SizeConfig.width!*82,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
      child: Column(children: [
        SizedBox(height: 20,),
        Text("Statistics",style: TextStyle(fontSize: 22,color: Colors.blue),),
        SizedBox(height: 20,),
        Image.asset("assets/images/homedots.png"),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset("assets/images/homefront.png"),
                SizedBox(width: 4,),
                Text("Earnings \nIncome",style: Theme.of(context).textTheme.headline4,),
              ],
            ),
             Row(
              children: [
                Image.asset("assets/images/homeback.png"),
                SizedBox(width: 4,),
                Text("No.of \nBranches",style: Theme.of(context).textTheme.headline4,),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
                Text("\$ 18,232",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
               
            
               Text("\$ 4,232",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              
          ],
        ),

      ],),
    );
  }
}