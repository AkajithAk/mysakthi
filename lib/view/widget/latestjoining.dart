import 'package:flutter/material.dart';

class LatestJoinings extends StatefulWidget {
  const LatestJoinings({ Key? key }) : super(key: key);

  @override
  _LatestJoiningsState createState() => _LatestJoiningsState();
}

class _LatestJoiningsState extends State<LatestJoinings> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 340,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
      child: Column(children: [
        SizedBox(height: 20,),
        Text("LATEST JOININGS",style: TextStyle(fontSize: 22,color: Colors.blue),),
        SizedBox(height: 20,),
       

       
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Column(
        
          children: [
           
                Text("Ajith kumar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("Refered by kumar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.green),),
              
          ],
        ),
        
            
               Text("23 Apr",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
       
         ],
       ),
         SizedBox(height: 5,),
       Padding(
         padding: const EdgeInsets.only(left:20.0,right: 20),
         child: Divider(color: Colors.grey,thickness: 1,),
       ),

      
       
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Column(
        
          children: [
           
                Text("Ajith kumar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               
            
               Text("Refered by kumar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.green),),
              
          ],
        ),
        
            
               Text("23 Apr",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
       
         ],
       ),
        
      ],),
    );
  }
}