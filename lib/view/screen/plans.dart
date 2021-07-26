import 'package:flutter/material.dart';
import 'package:mysakthi/view/widget/planwidget.dart';

import '../../size.dart';

class Planspage extends StatelessWidget {
  const Planspage({Key? key}) : super(key: key);

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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                        offset: const Offset(-90, 0),
                        child: Image.asset("assets/images/Back.png",)),
                    Transform.translate(
                        offset: const Offset(-50, 0), child: Text("plans"))
                  ],
                ),
                  Transform.translate(offset: const Offset(0, 150),
                  child: Planwidget())
                ],
              ),
            ),
          )),
    ));
  }
}
