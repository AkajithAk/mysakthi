import 'package:flutter/material.dart';

import '../../size.dart';

class Loginpage extends StatelessWidget {
  static const routename = "/loginpage";

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
                  image: AssetImage("assets/images/background3.png"))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start.,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.2),
                      child: IconButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back)),
                    ),
                    Center(
                      child: Container(
                          width: SizeConfig.width! * 60,
                          height: SizeConfig.height! * 20,
                          child: Image.asset("assets/images/newlogo.png")),
                    )
                  ],
                ),
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: SizeConfig.height! * 20,
                ),
                Text(
                  "Login with your user ID",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Expanded(
                  child: Form(
                      child: ListView(
                    children: [
                      Container(
                        height: SizeConfig.height! * 10,
                        width: SizeConfig.width! * 10,
                        padding: EdgeInsets.all(10),
                        child: Center(
                            child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              isDense: true,
                              labelText: "Mail Id",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                gapPadding: 10,
                              )),
                        )),
                      ),
                      Container(
                        height: SizeConfig.height! * 10,
                        width: SizeConfig.width! * 10,
                        padding: EdgeInsets.all(10),
                        child: Center(
                            child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              isDense: true,
                              labelText: "Ph No",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                gapPadding: 10,
                              )),
                        )),
                      ),
                      Container(
                        height: SizeConfig.height! * 10,
                        width: SizeConfig.width! * 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black),
                              BoxShadow(color: Colors.white)
                            ]),
                        child: Center(
                            child: Text(
                          "Login",
                          style: Theme.of(context).textTheme.button,
                        )),
                      ),
                      SizedBox(
                        height: SizeConfig.height! * 2,
                      ),
                      Center(
                          child: Text(
                        "Forget your password?",
                        style: Theme.of(context).textTheme.bodyText1,
                      ))
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
