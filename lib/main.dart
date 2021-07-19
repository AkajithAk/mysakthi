import 'package:flutter/material.dart';
import 'package:mysakthi/view/screen/login.dart';
import 'package:mysakthi/view/screen/onboardingpage1.dart';
import 'package:mysakthi/view/screen/onboardingpage2.dart';
import 'package:mysakthi/view/screen/onboardingpage3.dart';
import 'package:mysakthi/view/screen/otp.dart';
import 'package:mysakthi/view/screen/signup.dart';
import 'package:mysakthi/view/screen/splashscreen.dart';
import 'package:mysakthi/view/screen/splashscreen2.dart';
import 'package:mysakthi/view/screen/transactionspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return MaterialApp(
      title: 'MySakthi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.amberAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              bodyText1: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  //fontWeight: FontWeight.w700,
                  color: Colors.black),
              button: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              bodyText2: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white))

          // primarySwatch: Colors.blue,
          ),
      home: Transactionpage()
      // PageView(
      //   controller: controller,
      //   children: [
      //     Onboardingpage1(), 
      //     Onboardingpage2(), 
      //     Onboardingpage3()
      //     ],
      // )
      ,routes: {
        Onboardingpage2.routename: (ctx) => Onboardingpage2(),
        Onboardingpage3.routename: (ctx) => Onboardingpage3(),
        Splashscreen.routename: (ctx) => Splashscreen(),
        Splashscreen2.routename: (ctx) => Splashscreen2(),
        Signuppage.routename: (ctx) => Signuppage(),
        Loginpage.routename: (ctx) => Loginpage(),
        OTPpage.routename: (ctx) => OTPpage()
      },
    );
  }
}
