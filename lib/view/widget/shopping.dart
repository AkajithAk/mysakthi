import 'package:flutter/material.dart';

class Shoppings extends StatefulWidget {
  const Shoppings({ Key? key }) : super(key: key);

  @override
  _ShoppingsState createState() => _ShoppingsState();
}

class _ShoppingsState extends State<Shoppings> {
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 340,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
      child: Column(children: [
        SizedBox(height: 20,),
        Text("SHOPPINGS",style: TextStyle(fontSize: 22,color: Colors.blue),),
        SizedBox(height: 20,),
       Row( 
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
         Container(
        child: Image.asset("assets/images/homeprofile.png"),
      ),
      Column(
        children: [
          Text("Wirless Headphones",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
                   
               Text("Electronics & Gadgets",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                 
                 
      
         ],),
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
               
              Text("\$ 79.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.red),),
       
               Text("23 Apr",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
              
          ],
        ),
       ],),
      
        SizedBox(height: 5,),
       Padding(
         padding: const EdgeInsets.only(left:20.0,right: 20),
         child: Divider(color: Colors.grey,thickness: 1,),
       ),

      //  2

      Row( 
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
         Container(
        child: Image.asset("assets/images/homeprofile.png"),
      ),
      Column(
        children: [
          Text("Wirless Headphones",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
                   
               Text("Electronics & Gadgets",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                 
                 
      
         ],),
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
               
              Text("\$ 79.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.red),),
       
               Text("23 Apr",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
              
          ],
        ),
       ],),
      


      
        
      ],),
    );
  }
}