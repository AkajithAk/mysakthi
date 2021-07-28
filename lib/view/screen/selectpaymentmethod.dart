import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Paymentmethod extends StatelessWidget {
  const Paymentmethod({Key? key}) : super(key: key);

  Widget payment(String method) {
    return Container(
      width: SizeConfig.width! * 50,
      height: SizeConfig.height! * 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            method,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: SizeConfig.width! * 100,
          //height: SizeConfig.height! * 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background3.png"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.translate(
                offset: const Offset(0, -70),
                child: Row(
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
                        child: Text("select payment"))
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -140),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(onTap:(){},
                      child: payment("online payment")),
                    SizedBox(
                      height: SizeConfig.height! * 3,
                    ),
                    payment("Pay with cash"),
                    // SizedBox(
                    //   height: SizeConfig.height! * 3,
                    // ),
                    // payment("Debit & Credit card payment"),
                    // SizedBox(
                    //   height: SizeConfig.height! * 3,
                    // ),
                    // payment("Pay with wallet balance"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
