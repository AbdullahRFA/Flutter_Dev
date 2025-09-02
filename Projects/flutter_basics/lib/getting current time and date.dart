import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
class DashBoardScreen extends StatefulWidget{
  const DashBoardScreen({super.key});
  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen>{



  @override
  Widget build(BuildContext context) {
  var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        // backgroundColor: Colors.blue,

      ),
      body:Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text("Current Time $time",
              // style: TextStyle(
              //   fontSize: 21,
              //   color: Colors.orange,
              // ),
              // ),Text("Year: ${time.year}",
              // style: TextStyle(
              //   fontSize: 21,
              //   color: Colors.green,
              // ),
              // ),Text("Month: ${time.month}",
              // style: TextStyle(
              //   fontSize: 21,
              //   color: Colors.pink,
              // ),
              // ),Text("Date:  ${time.day}",
              // style: TextStyle(
              //   fontSize: 21,
              //   color: Colors.blue,
              // ),
              // ),Text("Hour:  ${time.hour}",
              // style: TextStyle(
              //   fontSize: 21,
              //   color: Colors.black,
              // ),
              // ),Text("Minute: ${time.minute}",
              // style: TextStyle(
              //   fontSize: 21,
              //   color: Colors.greenAccent,
              // ),
              // ),Text("Current Time ${time.second}",
              // style: TextStyle(
              //   fontSize: 21,
              //   color: Colors.deepPurpleAccent,
              // ),
              // ),
              
              Text("Current Time : ${DateFormat("Hms").format(time)}"),
              Text("Current Time : ${DateFormat("jms").format(time)}"),
              Text("Current Time : ${DateFormat("yMMMMd").format(time)}"),
              Text("Current Time : ${DateFormat("yMMMM").format(time)}"),
              Text("Current Time : ${DateFormat("QQQ").format(time)}"),
              Text("Current Time : ${DateFormat("QQQQ").format(time)}"),
              Text("Current Time : ${DateFormat("yMMMMEEEEd").format(time)}"),
              Text("Current Time : ${DateFormat("EEEE").format(time)}"),
              ElevatedButton(
                  onPressed: (){
                    setState(() {

                    });
                  },
                  child: Text("Current Time")
              ),
            ],
          ),
        ),
      )
    );
  }

}