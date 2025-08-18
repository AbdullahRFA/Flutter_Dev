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
      home: const MyHomePage(title: 'Type of button'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(
            fontSize: 25,

          ),
        ),
      ),
      // body:TextButton(
      //     onPressed: (){
      //       print("Text button tapped");
      //
      //     },
      //     onLongPress: (){
      //       print("Long Pressed");
      //     },
      //
      //     child: Text("Click Me!")
      // )
      // body: ElevatedButton(
      //     onPressed: (){
      //       print("Elevated button pressed");
      //     },
      //     onLongPress: (){
      //       print("Long pressed");
      //     },
      //     child: Text("Click Me!")
      // ),

      body: OutlinedButton(
          onPressed: (){
            print("Button pressed");
          },
          onLongPress: (){
            print('Long pressed');
          },
          child: Text("Outline Button")),
    );
  }
}