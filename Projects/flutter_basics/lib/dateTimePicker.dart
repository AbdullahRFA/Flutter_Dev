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
String currentdate = '';


  @override
  Widget build(BuildContext context) {
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
                Text("Select Date"),
                SizedBox(height: 12,),
                ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2026),
                    );

                    if (datePicker != null) {
                      print("Selected date: $datePicker");
                    } else {
                      print("No date selected");
                    }
                  },
                  child: const Text("Show Date"),
                ),
                SizedBox(height: 22,),
                ElevatedButton(

                    onPressed: () async{
                      var pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.input,
                      );
                      if(pickedTime != null){
                        print("Current Time : ${pickedTime.hour}:${pickedTime.minute}");
                      }
                    },
                    child: Text("Show Time"),

                ),

              ],
            ),
          ),
        )
    );
  }

}