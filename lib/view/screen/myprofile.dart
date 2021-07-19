import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/screen/selectcountry.dart';
import 'package:mysakthi/view/screen/wallebalanceedit.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({ Key? key }) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
 
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
                      SizedBox(width: 120,),
                      Text("SETTINGS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     InkWell(
                       onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => WalleBalance()));
                       },
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                         
                         height: SizeConfig.height!*20,
                        width: SizeConfig.width!*40,
                               //  width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(height:35 ,),
                                    Image.asset("assets/images/money.png",),
                                    SizedBox(height: 10,),
                                    Text("Cash",style: TextStyle(fontSize: 18),),
                                    Text("\$ 10,344",style: TextStyle(fontSize: 18)),
                                  ],
                                ),
                     
                                
                             ),
                     ),
         InkWell(
           onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SelectCountry()));
                       },
           child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                     
                     height: SizeConfig.height!*20,
                    width: SizeConfig.width!*40,
            //  width: double.infinity,
             child: Column(
               children: [
                 SizedBox(height:35 ,),
                 Image.asset("assets/images/homemoney.png",),SizedBox(height: 10,),
                 Text("Add bank \nconnection",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),), 
               ],
             ),
         
             
                 ),
         ),
                   ],
                 ),
               SizedBox(height: 20,),
                 Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                       
                       height: SizeConfig.height!*20,
                      width: SizeConfig.width!*90,
          //  width: double.infinity,
           child: Column(
             children: [
               SizedBox(height:35 ,),
               Image.asset("assets/images/persion.png",),
               SizedBox(height: 10,),
               Text("My Profile",style: TextStyle(fontSize: 18),),
               Text("ajithkumar@gmail.com",style: TextStyle(fontSize: 16)),
             ],
           ),

           
        ),

        SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                       
                       height: SizeConfig.height!*20,
                      width: SizeConfig.width!*40,
          //  width: double.infinity,
           child: Column(
             children: [
               SizedBox(height:35 ,),
               Image.asset("assets/images/flag.png",),
               SizedBox(height: 10,),
               Text("Language",style: TextStyle(fontSize: 18),),
               Text("English",style: TextStyle(fontSize: 16)),
             ],
           ),

           
        ),
         Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                   
                   height: SizeConfig.height!*20,
                  width: SizeConfig.width!*40,
          //  width: double.infinity,
           child: Column(
             children: [
               SizedBox(height:35 ,),
               Image.asset("assets/images/shopping.png",),SizedBox(height: 10,),
               Text("Send \nfeedback",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),), 
             ],
           ),

           
        ),
                   ],
                 ),
        

                         SizedBox(height: SizeConfig.height!*22,),   
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
  