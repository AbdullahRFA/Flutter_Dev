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
      home: const MyHomePage(title: 'GridView'),
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
  var colorArray = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.brown,
    Colors.greenAccent,
    Colors.lightBlueAccent,
    Colors.white70,
    Colors.amber,
    Colors.amber,
    Colors.amber
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.yellow,
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: GridView.count(
      //       crossAxisCount: 3,
      //       crossAxisSpacing: 12,
      //       mainAxisSpacing: 12,
      //       children: [
      //         Container(
      //           color: colorArray[0],
      //         ), Container(
      //           color: colorArray[1],
      //         ), Container(
      //           color: colorArray[2],
      //         ), Container(
      //           color: colorArray[3],
      //         ), Container(
      //           color: colorArray[4],
      //         ), Container(
      //           color: colorArray[5],
      //         ), Container(
      //           color: colorArray[6],
      //         ), Container(
      //           color: colorArray[3],
      //         ),Container(
      //           color: colorArray[5],
      //         ), Container(
      //           color: colorArray[6],
      //         ), Container(
      //           color: colorArray[4],
      //         ),
      //       ],
      //   ),
      // )
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.extent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: [
              Container(
                color: colorArray[0],
              ), Container(
                color: colorArray[1],
              ), Container(
                color: colorArray[2],
              ), Container(
                color: colorArray[3],
              ), Container(
                color: colorArray[4],
              ), Container(
                color: colorArray[5],
              ), Container(
                color: colorArray[6],
              ), Container(
                color: colorArray[3],
              ),Container(
                color: colorArray[5],
              ), Container(
                color: colorArray[6],
              ), Container(
                color: colorArray[4],
              ),
            ],
          ),
        )
    );
  }
}