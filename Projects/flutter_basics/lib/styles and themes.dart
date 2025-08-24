import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';
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
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge : TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontFamily: 'MainFont',
            fontWeight: FontWeight.w900,
          ),
          headlineSmall: TextStyle(
              fontSize: 11,
              fontFamily: 'MainFont',
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic
          ),

        ),

      ),

      // If you want all AppBars in your app to have the same color:
      // theme: ThemeData(
      //   useMaterial3: true, // you can keep Material 3 if you like
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.red,
      //     foregroundColor: Colors.white, // text & icon color
      //   ),
      // ),
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
        // color: Colors.blue.shade50,
        child: Column(
          children: [
            Text("Hello World",
            style: Theme.of(context).textTheme.headlineLarge
            ),
            Text("Hello World",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.red)
            ),
            Text("Hello World",
              style: Theme.of(context).textTheme.headlineLarge
            ),
            Text("Hello World",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.amber)
            ),
            Text("Hello World",
              style: mTextStyle,
            ),
            Text("Hello World",
              style: mTextStyleBold,
            ),
            Text("Abdullah Nazmus-Sakib",
              style: dynamicTextColor(TextColor: Colors.red, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

}