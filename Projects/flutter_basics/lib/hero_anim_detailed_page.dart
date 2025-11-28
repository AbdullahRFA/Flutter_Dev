import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/hero animation.dart';


class DetailedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero anim detailed page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MyHomePage(title: 'Container');
            }));
          },
          child: Hero(
              tag: "profileImage",
              child: Image.asset("assets/images/myself.png")
          ),
        ),
      ),
      
    );
  }
  
}