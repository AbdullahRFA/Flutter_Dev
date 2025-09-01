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
        // height: 70,
        width: double.infinity,
        // alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Card(
                elevation: 3,
                shadowColor: Colors.blue,
          
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Hello flutter",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),

                    ),
                  ),
                ),
              ),







            ],
          ),
        ),
      ),
    );
  }

}