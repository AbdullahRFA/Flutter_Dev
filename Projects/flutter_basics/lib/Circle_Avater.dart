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
      //   margin: const EdgeInsets.all(30),
      //   width: 100,
      //   height: 100,
      //   child: Padding(
      //     padding: const EdgeInsets.all(14.0),
      //     child: CircleAvatar(
      //       backgroundImage: AssetImage('assets/images/myself.png'),
      //       // transparent picture hole background color kaje lage
      //       // backgroundColor: Colors.deepPurple,
      //     ),
      //   ),
      // ),
      body: Center(
        child: CircleAvatar(
              child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Text("Abdullah Nazmus-Sakib",
                style: TextStyle(
                    fontSize: 20,
                  color: Colors.red,
                ),
                ),
              ),
              backgroundImage: AssetImage('assets/images/myself.png'),
              // transparent picture hole background color kaje lage
              // backgroundColor: Colors.deepPurple,
              // radius: 100,
              minRadius: 50,
              maxRadius: 200,
        ),
      ),

    );
  }

}