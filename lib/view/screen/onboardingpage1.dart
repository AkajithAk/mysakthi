import 'package:flutter/material.dart'; 
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/screen/onboardingpage2.dart';
import 'package:mysakthi/view/screen/otplogin.dart';
import 'package:mysakthi/view/screen/splashscreen.dart';

class Onboardingpage1 extends StatelessWidget {
  static const routename = "/onboarding";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: SizeConfig.width! * 100,
          height: SizeConfig.height! * 100,
          decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: (AssetImage("assets/images/background.png")))),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Image.asset(
                      "assets/images/newlogo.png",
                      scale: 3,
                      // width: SizeConfig.width! * 50,
                      // height: SizeConfig.width! * 50,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/card1.png",
                      scale: 1,
                      width: SizeConfig.width! * 100,
                      height: SizeConfig.width! * 100,
          
                      // height: 600,
                    ),
                  ),
                  Center(
                      child: Text(
                    "Organize Your Money",
                    style: Theme.of(context).textTheme.headline1,
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Container(
                        height: SizeConfig.blockSizeVertical! * 10,
                        width: SizeConfig.blockSizeVertical! * 50,
                        child: Text(
                          "Welcome! AiF helps you to have better understanding of your finances,  present and future.",
                          textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(onTap: () {
                               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtpLogin()),
            ); 
                            },
                          child: Text("skip", style: Theme.of(context).textTheme.button)),
                        InkWell(
                          onTap: () {
                              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Onboardingpage2()),
            ); 
                          },
                          
                          child: Container(
                              width: SizeConfig.width! * 30,
                              height: SizeConfig.height! * 7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black),
                              child: Center(
                                  child: Text(
                                "Next",
                                style: Theme.of(context).textTheme.bodyText2,
                              ))),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
