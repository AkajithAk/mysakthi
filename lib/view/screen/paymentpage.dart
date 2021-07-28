import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Paymentpage extends StatelessWidget {
  static const rountname = "/paymentpage";
  const Paymentpage({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.translate(
              offset: const Offset(0, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                      offset: const Offset(-50, 0),
                      child: Image.asset(
                        "assets/images/Back.png",
                      )),
                  Transform.translate(
                      offset: const Offset(-40, 0),
                      child: Text("Payment with cash"))
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 90),
              child: Container(
                padding: EdgeInsets.all(25),
                width: SizeConfig.width! * 100,
                height: SizeConfig.height! * 14,
                child: Text(
                  "Make Bank Transfer to below mentioned account and send the receipt to the whatsapp Number +918807033739",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 70),
              child: Center(
                child: Container(
                  width: SizeConfig.width! * 80,
                  height: SizeConfig.height! * 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Form(
                            child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              isDense: true,
                              enabledBorder: InputBorder.none,
                              labelText: "Account Holder Name",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                gapPadding: 10,
                              )),
                        )),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                isDense: true,
                                enabledBorder: InputBorder.none,
                                labelText: "Phone Number",
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  gapPadding: 10,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                helperMaxLines: 10,
                                isDense: true,
                                enabledBorder: InputBorder.none,
                                labelText: "Address",
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  gapPadding: 10,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  //tileColor: Colors.blue,

                  leading: Icon(
                    Icons.account_balance,
                    size: 50,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SARAVANAN V",
                      ),
                      Text("1085104000008211")
                    ],
                  ),
                  subtitle: Text("IFSC Code: IBKL0000251"),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 130),
              child: Container(
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
                      "Done",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
