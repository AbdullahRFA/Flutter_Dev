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
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Horizontal Scroll Section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          color: Colors.blue,
                          child: const Text("Hello Scroll Viewer",
                              style: TextStyle(color: Colors.white)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          color: Colors.greenAccent,
                          child: const Text("Hello Scroll Viewer"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          color: Colors.yellow,
                          child: const Text("Hello Scroll Viewer"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          color: Colors.red,
                          child: const Text("Hello Scroll Viewer"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          color: Colors.deepPurple,
                          child: const Text("Hello Scroll Viewer",
                              style: TextStyle(color: Colors.white)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          color: Colors.lightGreen,
                          child: const Text("Hello Scroll Viewer"),
                        ),
                      ],
                    ),
                  ),
                ),

                // Vertical Containers Section
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  alignment: Alignment.center,
                  child: const Text("Hello Scroll Viewer"),
                  height: 200,
                  width: double.infinity,
                  color: Colors.lightGreen,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  alignment: Alignment.center,
                  child: const Text("Hello Scroll Viewer",
                      style: TextStyle(color: Colors.white)),
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  alignment: Alignment.center,
                  child: const Text("Hello Scroll Viewer"),
                  height: 200,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  alignment: Alignment.center,
                  child: const Text("Hello Scroll Viewer"),
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  alignment: Alignment.center,
                  child: const Text("Hello Scroll Viewer"),
                  height: 200,
                  width: double.infinity,
                  color: Colors.deepPurple,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  alignment: Alignment.center,
                  child: const Text("Hello Scroll Viewer"),
                  height: 200,
                  width: double.infinity,
                  color: Colors.amber,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  alignment: Alignment.center,
                  child: const Text("Hello Scroll Viewer"),
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        )
    );
  }
}