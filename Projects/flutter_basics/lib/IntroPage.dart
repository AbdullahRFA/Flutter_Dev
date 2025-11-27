import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/switching%20%20from%20one%20screen%20to%20another%20screen.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome',
            style: TextStyle(
              fontSize: 33,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePagee(title: "Home Page")));
                },
                child: Text("Next")
            ),
          ],
        ),
      ),
    );
  }

}