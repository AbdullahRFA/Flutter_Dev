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
      home: const MyHomePage(title: 'Rows and Columns'),
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
                color: Colors.white
            ),
          ),
          backgroundColor: Colors.deepPurple,

        ),
        body: Center(
          child: InkWell(
            onTap:(){
              print("Print On tap");
            } ,
            onLongPress: (){
              print("long pressed on container");
            },
            onDoubleTap: (){
              print("double tapped");
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
              child: Center(
                child: InkWell(
                  onTap: (){
                    print("I'm clicked");
                  },
                  child: Text("Click me",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}