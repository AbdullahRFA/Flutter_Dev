import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/splash screen.dart';

class SpashScreen extends StatefulWidget{
  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return MyHomePage(title: "Home Page");
      }));

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text("Welcome Buddy",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        ),
      ),
    );
  }
}

//const MyHomePage(title: 'Container')