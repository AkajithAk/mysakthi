import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/screen/myprofile.dart';
import 'package:mysakthi/view/screen/selectcountry.dart';
import 'package:mysakthi/view/screen/wallebalanceedit.dart';
import 'package:mysakthi/view/widget/country.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({ Key? key }) : super(key: key);

  @override
  _SelectCountryState createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
     return Scaffold( 
      body: Container(
        decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/background3.png",),fit: BoxFit.fill,)),
        child: Padding(
          padding: const EdgeInsets.only(top:40.0,left: 20,right: 20),
          child: Container( 
            child: SelectCountryContainer()),
        ),
      ),
      
    );
  }
}
  