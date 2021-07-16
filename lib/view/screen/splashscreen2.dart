import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Splashscreen2 extends StatelessWidget {
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
            Container(
                height: SizeConfig.height! * 20,
                child: Image.asset(
                  "assets/images/newlogo.png",
                  scale: 1,
                )),
            //SizedBox(height: SizeConfig.height!*5,),
            Text(
              "WELCOME",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 25, color: Colors.black),
            ),
            SizedBox(
              height: SizeConfig.height! * 2,
            ),
            Text(
              "Get into login your account",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: SizeConfig.height! * 2,
            ),
            Container(
              width: SizeConfig.width! * 50,
              height: SizeConfig.height! * 8,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.black),
                BoxShadow(color: Colors.white)
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Center(
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.height! * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Text(
                  "sign up",
                  style: Theme.of(context).textTheme.button,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
