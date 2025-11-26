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
      home: const MyHomePage(title: 'Container'),
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
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: Wrap(
          // direction: Axis.vertical,
          direction: Axis.horizontal,
          spacing: 13,
          runSpacing: 13,
          alignment: WrapAlignment.center,

          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.white,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.lightBlueAccent,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.brown,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.greenAccent,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ],
        ),
      )
    );
  }
}