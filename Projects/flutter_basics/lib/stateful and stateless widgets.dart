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

  // CORRECT: state class must extend State<MyHomePage>
  class _MyHomePageState extends State<MyHomePage> {

    var count = 0;

    void incrementCounterValue(){
      setState(() {
        count++;
      });
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Counter app"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
              text: TextSpan(
              style: TextStyle(
              fontSize: 30,
            fontWeight: FontWeight.bold,
                color: Colors.green
          ),
          children: <TextSpan>[
            TextSpan(text: "Counter Value: "),
            TextSpan(text: "$count",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 40,
            ),
            ),
          ],

          )
      ),
              SizedBox(
                width: 40,
              ),

              ElevatedButton(
                  onPressed: (){
                    incrementCounterValue();
              },
                  child: Text("Increment")
              ),
            ],
          ),
        ),
      );
    }

  }