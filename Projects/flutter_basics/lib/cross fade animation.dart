import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(title: 'Container'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var isFirst = true;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   Timer(
  //     Duration(seconds: 3),
  //       (){
  //       reload();
  //       }
  //   );
  // }
  //
  // void reload(){
  //   setState(() {
  //     isFirst = !isFirst;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 300,
                  color: Colors.grey,
                ),
                secondChild: Image.asset("assets/images/myself.png",height: 200,width: 300,),
                crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: Duration(seconds: 2),
                firstCurve: Curves.bounceIn,
                secondCurve: Curves.bounceOut,
                sizeCurve: Curves.bounceInOut
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                isFirst = !isFirst;
              });
            }, child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}