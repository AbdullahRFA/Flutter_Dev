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
        height: 400,
        width: 400,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 160,
              width: 160,
              color: Colors.red,
            ),

            Positioned(
              left: 20,
              top: 30,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}