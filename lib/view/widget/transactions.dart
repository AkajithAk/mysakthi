import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({ Key? key }) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 340,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
      child: Column(children: [
        SizedBox(height: 20,),
        Text("TRANSACTIONS",style: TextStyle(fontSize: 22,color: Colors.blue,),),
        SizedBox(height: 20,),
       

       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
                Text("Branch - A",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("\$ 4,232",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.green),),
              
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
                Text("MGH231",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("23 Apr",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
              
          ],
        ),
        SizedBox(height: 5,),
       Padding(
         padding: const EdgeInsets.only(left:20.0,right: 20),
         child: Divider(color: Colors.grey,thickness: 1,),
       ),

      //  2

      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
                Text("Branch - A",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("\$ 4,232",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.green),),
              
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
                Text("MGH231",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("23 Apr",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
              
          ],
        ),
        SizedBox(height: 5,),
       Padding(
         padding: const EdgeInsets.only(left:20.0,right: 20),
         child: Divider(color: Colors.grey,thickness: 1,),
       ),
      //  3
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
                Text("Branch - A",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("\$ 4,232",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.red),),
              
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
                Text("credited to your bamk",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("23 Apr",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
              
          ],
        ),
        
      ],),
    );
  }
}