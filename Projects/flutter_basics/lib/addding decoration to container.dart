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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade100,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            // color: Colors.greenAccent,
            child: Text("Hello flutter",
            style: TextStyle(
              fontSize: 15,

            ),
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              // borderRadius: BorderRadius.circular(11),
              // borderRadius: BorderRadius.all(Radius.circular(12)),
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(23))
              // borderRadius: BorderRadius.vertical(),
              // borderRadius: BorderRadius.horizontal()
              border: Border.all(
                color: Colors.red,
                width: 2

              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.amber,
                  spreadRadius: 10,
                )
              ],

              shape: BoxShape.circle

            ),
          ),
        ),
      ),
    );
  }

}