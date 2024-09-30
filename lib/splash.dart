import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapplication/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Splash();
  }

}

class _Splash extends State<SplashScreen>{
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: ""),));
    });
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
  return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: Container(
        height: height,
        width: width,
        child: Image.asset("assets/images/s5.jpg", fit: BoxFit.fill,),
      ),
    ),

  );
  }

}