import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/widget/tilewidget.dart';

class Leveltracking extends StatefulWidget {
  Leveltracking({Key? key}) : super(key: key);

  @override
  _LeveltrackingState createState() => _LeveltrackingState();
}

class _LeveltrackingState extends State<Leveltracking> {
  List<Map<String, String>> userlevel = [
    {
      "level": "01",
    },
    {"level": "02"},
    {"level": "03"},
    {"level": "04"}
  ];

  List<Map<String, Map<String, String>>> userrefer = [
    {
      "Rajesh": {"Joined Apr 28, 2021": "assets/images/silver.png"}
    },
    {
      "Rajesh": {"Joined Apr 28, 2021": "assets/images/gold.png"}
    },
    {
      "Rajesh": {"Joined Apr 28, 2021": "assets/images/diamond.png"}
    },
    {
      "Rajesh": {"Joined Apr 28, 2021": "assets/images/diamond.png"}
    },
    {
      "Rajesh": {"Joined Apr 28, 2021": "assets/images/diamond.png"}
    },
    {
      "Rajesh": {"Joined Apr 28, 2021": "assets/images/diamond.png"}
    },
    {
      "Rajesh": {"Joined Apr 28, 2021": "assets/images/diamond.png"}
    }
  ];

  @override
  Widget build(BuildContext context) {
    //print(userlevel[0].values.first);
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: SizeConfig.width! * 100,
        height: SizeConfig.height! * 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/background3.png",
                ))),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                      offset: const Offset(-60, 0),
                      child: Image.asset(
                        "assets/images/Back.png",
                      )),
                  Transform.translate(
                      offset: const Offset(-40, 0),
                      child: Text("level tracking"))
                ],
              ),
              SizedBox(
                height: SizeConfig.height! * 8,
              ),
              Container(
                width: SizeConfig.width! * 100,
                height: SizeConfig.height! * 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  //height: 100,
                  //color: Colors.amber,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/profile.png"),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4, childAspectRatio: 2.5 / 4),
                          itemCount: userlevel.length,
                          itemBuilder: (BuildContext context, int i) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(userlevel[i].keys.first),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  userlevel[i].values.first,
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.height! * 8,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: userrefer.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Container(
                      width: SizeConfig.width! * 90,
                      height: SizeConfig.height! * 10,
                      child: ListTile(
                        leading: Image.asset("assets/images/profile.png"),
                        title: Text(userrefer[i].keys.first),
                        subtitle: Text(userrefer[i].values.first.keys.first),
                        trailing: Image.asset(userrefer[i].values.first.values.first),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}





// ListTile(
//                       //horizontalTitleGap: ,
//                       minVerticalPadding: 10,enabled: true,
//                       leading: Image.asset("assets/images/profile.png"),
//                       title: Text(userrefer[i].keys.first),
//                       subtitle: Text(userrefer[i].values.first.keys.first),
//                       trailing: Column(
//                         children: [
//                           Image.asset(userrefer[i].values.first.values.first),
//                           Container(
//                             width: 1,
//                             child: 
//                             Center(child: 
//                             Text("Buy now",style: TextStyle(fontSize: 5),),),
//                           )
//                         ],
//                       ),

//                     )



// Tilewidget(
//                         image: "assets/images/profile.png",
//                         title: userrefer[i].keys.first,
//                         subtitle: userrefer[i].values.first.keys.first,
//                         planimg: userrefer[i].values.first.values.first)