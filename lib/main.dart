import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart'; 
import 'package:mysakthi/view/screen/homebalance1.dart'; 
import 'package:mysakthi/view/screen/onboardingpage2.dart';
import 'package:mysakthi/view/screen/onboardingpage3.dart';
import 'package:mysakthi/view/screen/otp.dart';
import 'package:mysakthi/view/screen/splashscreen2.dart'; 

import 'view/screen/login.dart';
import 'view/screen/onboardingpage1.dart';
import 'view/screen/signup.dart';
import 'view/screen/splashscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
                  color: Colors.white),
                  headline4: TextStyle(color: Colors.black,fontSize: 18,),
                  headline5:TextStyle(color: Colors.black,fontSize: 16,
                  fontWeight: FontWeight.bold), )

          // primarySwatch: Colors.blue,
          ),
      home:Checking(),
      // PageView(
      //   controller: controller,
      //   children: [
      //     Onboardingpage1(), 
      //     Onboardingpage2(), 
      //     Onboardingpage3()
      //     ],
      // )
      // ,routes: {
      //   Onboardingpage2.routename: (ctx) => Onboardingpage2(),
      //   Onboardingpage3.routename: (ctx) => Onboardingpage3(),
      //   Splashscreen.routename: (ctx) => Splashscreen(),
      //   Splashscreen2.routename: (ctx) => Splashscreen2(),
      //   Signuppage.routename: (ctx) => Signuppage(),
      //   Loginpage.routename: (ctx) => Loginpage(),
      //   OTPpage.routename: (ctx) => OTPpage()
      // },

  // home: Checking(),
    );
  }
}

class Checking extends StatefulWidget {
  const Checking({ Key? key }) : super(key: key);

  @override
  _CheckingState createState() => _CheckingState();
}

class _CheckingState extends State<Checking> {

  FirebaseAuth ?_auth;
  User ?_user;
  bool isLoading=true;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _auth=FirebaseAuth.instance;
    _user=_auth!.currentUser;
    isLoading=false;
  }
  @override
  Widget build(BuildContext context) {
    return isLoading? Scaffold(
      body:Center(
        child: CircularProgressIndicator(),
      )
    ):_user==null?Onboardingpage1():Splashscreen();
  }
}

// Onboardingpage1