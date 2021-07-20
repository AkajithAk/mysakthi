import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class WalleBalance extends StatefulWidget {
  const WalleBalance({ Key? key }) : super(key: key);

  @override
  _WalleBalanceState createState() => _WalleBalanceState();
}

class _WalleBalanceState extends State<WalleBalance> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
     return Scaffold(  
      body: Container(
        decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/background3.png",),fit: BoxFit.fill,)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:40.0),
            child: Column(
              children: [
                
               
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Back.png"),
                      SizedBox(width: 150,),
                      Text("CASH",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                    ],
                  ),
                ),
               
               SizedBox(height: 20,),
                 Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                       
                       height: SizeConfig.height!*25,
                      width: SizeConfig.width!*90,
          //  width: double.infinity,
           child: Column(
             children: [
               SizedBox(height:35 ,),
               Image.asset("assets/images/money.png",),
               SizedBox(height: 10,),
               Text("Wllet Balance",style: TextStyle(fontSize: 18,color: Colors.black),),
               SizedBox(height: 2,),
               Text("10,765",style: TextStyle(fontSize: 16,color: Colors.blue)),
               SizedBox(height: 2,),
               Text("USD",style: TextStyle(fontSize: 16,color: Colors.black)),
             ],
           ),

           
        ),

        SizedBox(height: SizeConfig.height!*30,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [ 
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("1",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),

                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("2",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("3",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),
          
                   ],
                 ),

                //  2

                SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [ 
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),

                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("5",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("6",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),
          
                   ],
                 ),

                //  3
                SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [ 
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("7",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),

                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("8",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("9",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),
          
                   ],
                 ),

                //  4

                SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [ 
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("00",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),

                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:  
                                     
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text("0",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ), 
                                  
                     
                                
                             ),
                     ),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*5,
                        width: SizeConfig.width!*20,
                               //  width: double.infinity,
                               
                                child:   Padding(
                                      padding: const EdgeInsets.only(top:0.0,left: 12),
                                      child: Row(
                                        children: [

                                          Image.asset("assets/images/Back1.png"),
                                          SizedBox(width: 6,),
                                          Image.asset("assets/images/cross.png"),
                                        ],
                                      ),
                                    ), 
                                  
                     
                                
                             ),
                     ),
          
                   ],
                 ),
        

                         SizedBox(height: SizeConfig.height!*4,),   
                     Container(
                       
                       width: SizeConfig.width!*45,
                       
                       child: Divider(thickness: 3,color: Colors.black,))       
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}