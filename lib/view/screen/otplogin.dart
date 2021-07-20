import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/screen/homebalance1.dart';

enum MobileVerificationState{
  SHOW_MOBILE_FROM_STATE,
  SHOW_OTP_FROM_STATE,
}

class OtpLogin extends StatefulWidget {
  const OtpLogin({ Key? key }) : super(key: key);

  @override
  _OtpLoginState createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
  MobileVerificationState currentState=MobileVerificationState.SHOW_MOBILE_FROM_STATE;

  final phoneController=TextEditingController();
  final otpController=TextEditingController();

  FirebaseAuth _auth=FirebaseAuth.instance;

   String ?verificationId; 

  bool showLoading=false;
  void signWithPhoneAuthCredential(AuthCredential phoneAuthCredential)async {
    setState(() {
      showLoading=true;
    });
    try{
      
   final authCredental=await _auth.signInWithCredential(phoneAuthCredential);
   setState(() {
      showLoading=false;
    });
    if(authCredental.user !=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeBalance1()));
    }
   }on FirebaseAuthException catch(e){
     setState(() {
      showLoading=true;
            _scaffoldKey.currentState!.showSnackBar(SnackBar(content:Text(e.message)));

    });
   }
}

  getMobileFromWidget(context){
return Column(
  children: [
    
    Container(
      height: 120,
      width: 120,
                           
                          child: Image.asset("assets/images/newlogo.png")),
    Text(
                  "Refer a Person",
                  style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                Text(
                    "I have read and agree to the \n Terms of Service and Privacy policy.",
                    textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 18,),
                  ),

                  SizedBox(height: 50,),
                   Text(
                  "Create account with your Ph No ",
                  style: TextStyle(color: Colors.black,fontSize: 17 ),
                ), 
                SizedBox(height: 10,),
    TextFormField(
      controller: phoneController,
      decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              isDense: true,
                              labelText: "Ph.No",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                gapPadding: 10,
                              )),
    ),
    SizedBox(height: 16,),
    Container(
      width:250 ,
      height: 60,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
      child: FlatButton(onPressed: ()async{

        setState(() {
          showLoading=true;
        });
       await _auth.verifyPhoneNumber(
          phoneNumber: phoneController.text, 
          verificationCompleted: (phoneAuthCredential)async{
             setState(() {
          showLoading=false;
        });
        // signWithPhoneAuthCredential(phoneAuthCredential);
          },
           verificationFailed: (verificationFailed)async{
             setState(() {
          showLoading=false;
        });
             _scaffoldKey.currentState!.showSnackBar(SnackBar(content:Text(verificationFailed.message))); 
           }, 
           codeSent: (verificationId,resendToken)async{

             setState(() {
               showLoading=false;
               currentState=MobileVerificationState.SHOW_OTP_FROM_STATE;
             this.verificationId=verificationId;
             });
           }, 
           codeAutoRetrievalTimeout: (verificationId)async{

           });
      }, child:Text("Create Account",style: TextStyle(color:Colors.blue,fontSize: 18),) ),
    ),
    Spacer()
  ],
);
  }

  getOtpFromnWidget(context){
    return Column(
  children: [
     Container(
      height: 120,
      width: 120,
                           
                          child: Image.asset("assets/images/newlogo.png")),
    
    SizedBox(height: 20,),
    Text(
                  "We have send a verification code to your verified mobile number",
                  textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 16),
                ),
                SizedBox(height: 40,),
                Text(
                  "Please enter your Verification Code",
                  style: TextStyle(color: Colors.black,fontSize: 16),
                ),
                 SizedBox(height: 10,),
     
    TextFormField(
      controller: otpController,
       decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              isDense: true,
                              labelText: "OTP",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                gapPadding: 10,
                              )),
    ),
    SizedBox(height: 16,),
    Container(
      height: 60,
                        width:250,
      child: FlatButton(onPressed: ()async{
        // PhoneAuthCredential
  final phoneAuthCredential=PhoneAuthProvider.credential(verificationId: verificationId, smsCode: otpController.text);
  signWithPhoneAuthCredential(phoneAuthCredential);
      }, child:Text("Confirm Account",style: TextStyle(color: Colors.blue[100]),) ),
    ),
    Spacer()
  ],
);
  }

  final GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        key: _scaffoldKey,
      body:  Container(
       decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/background3.png",),fit: BoxFit.cover,)),
        child:showLoading? Center(child: CircularProgressIndicator(),): currentState==MobileVerificationState.SHOW_MOBILE_FROM_STATE?getMobileFromWidget(context):getOtpFromnWidget(context) ,
       padding: EdgeInsets.all(16),
        )
    );
  }
}

