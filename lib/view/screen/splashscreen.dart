import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: SizeConfig.height! * 100,
        width: SizeConfig.width! * 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/images/background2.png"))),
                child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(height: SizeConfig.height!*20,
                      child: Image.asset("assets/images/newlogo.png",scale: 1,)),
                    //SizedBox(height: SizeConfig.height!*5,),
                    Text("ISHAKTHI",style: TextStyle(fontFamily: "Montserrat",fontSize: 25,color: Colors.blue),),
                    SizedBox(height: SizeConfig.height!*2,),
                    Text("subtitle here",style: Theme.of(context).textTheme.bodyText1,)

                  ],),
                ),
      ),
    ));
  }
}
