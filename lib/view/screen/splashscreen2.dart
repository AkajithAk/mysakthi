import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/screen/login.dart';
import 'package:mysakthi/view/screen/signup.dart';

class Splashscreen2 extends StatelessWidget {
  static const routename = "/splashscreen2";
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
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background2.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.translate(offset: const Offset(0, -35),
              child: Container(
                  height: SizeConfig.height! * 30,
                  child: Image.asset(
                    "assets/images/newlogo.png",
                    scale: 1,
                  )),
            ),
            //SizedBox(height: SizeConfig.height!*5,),
            Transform.translate(offset: const Offset(0, -90),
              child: Text(
                "WELCOME",
                style: TextStyle(
                    fontFamily: "Montserrat", fontSize: 25, color: Colors.black),
              ),
            ),
            // SizedBox(
            //   height: SizeConfig.height! * 2,
            // ),
            Transform.translate(offset: const Offset(0, -70),
              child: Column(children: [
                Text(
                "Get into login your account",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: SizeConfig.height! * 2,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(Loginpage.routename);
                },
                child: Container(
                  width: SizeConfig.width! * 50,
                  height: SizeConfig.height! * 8,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black),
                        BoxShadow(color: Colors.white)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: SizeConfig.height! * 2,
              // ),
              Container(
                height: SizeConfig.height! * 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Transform.translate(offset: const Offset(0, 20),
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.blue,
                        indent: SizeConfig.height! * 1,
                        endIndent: SizeConfig.height! * 6,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(Signuppage.routename);
                      },
                      child: Text(
                        "sign up",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ],
                ),
              )
            
              ],),
            )
            
          ],
        ),
      ),
    ));
  }
}
