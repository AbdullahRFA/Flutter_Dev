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
      body: Center(
        // SizedBox.expand
        // SizedBox.shrink
        child: SizedBox(
          // dimension: 200,
          height: 200,
          width: 300,
          child: Container(
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("Click!")
                ),

                SizedBox(
                  // height: 20,
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("push me!")
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}