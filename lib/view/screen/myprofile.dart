import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Myprofile extends StatefulWidget {
  Myprofile({Key? key}) : super(key: key);

  @override
  _MyproileState createState() => _MyproileState();
}

class _MyproileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: SizeConfig.width! * 100,
          height: SizeConfig.height! * 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background3.png"))),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(offset: const Offset(-60, 0),
                    child: Image.asset("assets/images/Back.png")),
                    Transform.translate(offset:const Offset(-40, 0),
                    child: Text("My Profile"))
                  ],
                ),
                SizedBox(height:  SizeConfig.height! * 10,),
                Container(
                  width: SizeConfig.width! * 90,
                  height: SizeConfig.height! * 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/profile.png"),
                         SizedBox(height:  SizeConfig.height! * 5,),
                         Text("mydomain@gmail.com"),
                         SizedBox(height:  SizeConfig.height! * 1,),
                         Text("Signed in with email")

                         

                      ],
                    ),
                  ),
                ),
                SizedBox(height:  SizeConfig.height! * 10,),
                Container(
                  width: SizeConfig.width! * 90,
                  height: SizeConfig.height! * 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                       Text("Account"),
                         SizedBox(height:  SizeConfig.height! * 5,),
                         Row(
                           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Image.asset("assets/images/password.png"),
                              SizedBox(width:  SizeConfig.height! * 2,),
                             Text("Change password"),
                             IconButton(onPressed: null, icon:Icon(Icons.arrow_drop_down ))
                           ],
                         ),
                         SizedBox(height:  SizeConfig.height! * 1,),
                         Divider(color: Color.fromRGBO(209, 211, 216,100),thickness: 2,),
                         SizedBox(height:  SizeConfig.height! * 1,),
                         Row(
                           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Image.asset("assets/images/logout.png"),
                             SizedBox(width:  SizeConfig.height! * 2,),
                             Text("Log out"),
                             //IconButton(onPressed: null, icon:Icon(Icons.arrow_drop_down ))
                           ],
                         ),
                         

                         

                      ],
                    ),
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
