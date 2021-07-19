import 'package:flutter/material.dart';

import '../../size.dart';

class Signuppage extends StatelessWidget {
  static const routename = "/signuppage";

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start.,
                  children: [
                    IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back)),
                    Center(
                      child: Container(
                          width: SizeConfig.width! * 60,
                          height: SizeConfig.height! * 20,
                          child: Image.asset("assets/images/newlogo.png")),
                    )
                  ],
                ),
                Text(
                  "Refer a Person",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: SizeConfig.height! * 3,
                ),
                Container(
                  height: SizeConfig.height! * 5,
                  width: SizeConfig.width! * 80,
                  child: Text(
                    "I have read and agree to the  Terms of Service and Privacy policy.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.height! * 3,
                ),
                Icon(
                  Icons.check_circle_outline_outlined,
                  size: SizeConfig.height! * 5,
                ),
                SizedBox(
                  height: SizeConfig.height! * 3,
                ),
                Text(
                  "Create account with your Ph No ",
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
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              isDense: true,
                              labelText: "Full name",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                gapPadding: 10,
                              )),
                        )),
                      ),
                      SizedBox(
                        height: SizeConfig.height! * 0.2,
                      ),
                      Container(
                        height: SizeConfig.height! * 10,
                        width: SizeConfig.width! * 10,
                        padding: EdgeInsets.all(10),
                        child: Center(
                            child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              isDense: true,
                              labelText: "Mail ID",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                gapPadding: 10,
                              )),
                        )),
                      ),
                      SizedBox(
                        height: SizeConfig.height! * 0.2,
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
                      SizedBox(
                        height: SizeConfig.height! * 0.2,
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
                          "Create account",
                          style: Theme.of(context).textTheme.button,
                        )),
                      )
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
