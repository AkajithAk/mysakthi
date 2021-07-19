import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Transactionpage extends StatelessWidget {
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
                  image: AssetImage(
                    "assets/images/background3.png",
                  ))),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Back.png"),
                    Text(
                      "Transactions",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Image.asset("assets/images/Filter.png")
                  ],
                ),
                SizedBox(
                  height: SizeConfig.height! * 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/search.png"),
                    SizedBox(
                      height: SizeConfig.width! * 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: SizeConfig.width!*30,
                        height: SizeConfig.height!*10,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "search",
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(borderSide: BorderSide(width: 10),gapPadding: 10,borderRadius: BorderRadius.circular(90))),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
