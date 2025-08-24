import 'package:flutter/material.dart';
void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      // theme: ThemeData(
      //   useMaterial3: false,
      //   primarySwatch: Colors.blue
      // ),

      // If you want all AppBars in your app to have the same color:
      theme: ThemeData(
        useMaterial3: true, // you can keep Material 3 if you like
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, // text & icon color
        ),
      ),
      home: DashBoardScreen(),
    );
  }

}

class DashBoardScreen extends StatelessWidget{
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        // backgroundColor: Colors.blue,

      ),
      // body: Container(
      //   color: Colors.blue.shade50,
      //   child: Padding(
      //
      //     padding: const EdgeInsets.all(12.8),
      //     // padding: const EdgeInsets.only(top: 14.0, left: 15, right: 20, bottom: 40),
      //     child: Text("Hello Dart",
      //     style: TextStyle(
      //       fontSize: 26,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     ),
      //   ),
      // ),
      body: Container(
        margin: const EdgeInsets.all(20),

        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text("Hello World",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(12),
          color: Colors.blue.shade50,
        ),
      ),
    );
  }

}