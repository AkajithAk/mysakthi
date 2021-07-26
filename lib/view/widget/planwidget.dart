import 'package:flutter/material.dart';

import '../../size.dart';

class Planwidget extends StatelessWidget {
  const Planwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> plandata = [
      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.Proim sed neque. Dolor sit",
      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.Proim sed neque. Dolor sit",
      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.Proim sed neque. Dolor sit"
    ];
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
                  width: SizeConfig.width! * 80,
                  height: SizeConfig.height! * 60,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.translate(
                          offset: const Offset(0, 70),
                          child: Text("SILVER PLAN")),
                      //SizedBox(height: 10,),
                      Expanded(
                        child: ListView.builder(
                          itemCount: plandata.length,
                          itemBuilder: (BuildContext context, int i) {
                            return Column(
                              children: [
                                Transform.translate(
                                  offset: const Offset(0, 90),
                                  child: Row(
                                    children: [
                                      Container(decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [
                                Color.fromRGBO(0, 235, 255, 100),
                                Color.fromRGBO(0, 199, 249, 100),
                                Color.fromRGBO(0, 150, 242, 100),
                                Color.fromRGBO(0, 111, 237, 100),
                                Color.fromRGBO(0, 83, 233, 100),
                                Color.fromRGBO(0, 66, 230, 100),
                                Color.fromRGBO(0, 61, 230, 100)
                              ])),
                                          child: Icon(Icons
                                              .check_circle_outline_outlined,color: Colors.white,),),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Flexible(child: Text(plandata[i])),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                          width: SizeConfig.width! * 30,
                          height: SizeConfig.height! * 6,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(0, 235, 255, 100),
                                Color.fromRGBO(0, 199, 249, 100),
                                Color.fromRGBO(0, 150, 242, 100),
                                Color.fromRGBO(0, 111, 237, 100),
                                Color.fromRGBO(0, 83, 233, 100),
                                Color.fromRGBO(0, 66, 230, 100),
                                Color.fromRGBO(0, 61, 230, 100)
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("Buy",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ))
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -565),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: SizeConfig.width! * 100,
                        height: SizeConfig.height! * 20,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Container(
                        width: SizeConfig.width! * 70,
                        height: SizeConfig.height! * 15,
                        //padding: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                            //color: Colors.black,
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(0, 235, 255, 100),
                              Color.fromRGBO(0, 199, 249, 100),
                              Color.fromRGBO(0, 150, 242, 100),
                              Color.fromRGBO(0, 111, 237, 100),
                              Color.fromRGBO(0, 83, 233, 100),
                              Color.fromRGBO(0, 66, 230, 100),
                              Color.fromRGBO(0, 61, 230, 100)
                            ])),
                        child: Center(
                            child: Text(
                          "₹3K",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                )
      ],
    );
  }
}
